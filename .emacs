(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes
   '("afd761c9b0f52ac19764b99d7a4d871fc329f7392dfc6cd29710e8209c691477" "edb73be436e0643727f15ebee8ad107e899ea60a3a70020dfa68ae00b0349a87" "2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" "9e39a8334e0e476157bfdb8e42e1cea43fad02c9ec7c0dbd5498cf02b9adeaf1" default))
 '(package-selected-packages
   '(flycheck company use-package rich-minority restart-emacs evil autothemer))
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; 系统设置
(tool-bar-mode 0)
(menu-bar-mode 0)
(setq make-backup-files nil)
(setq inhibit-startup-screen t)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(setq gc-cons-threshold most-positive-fixnum)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq line-number-mode nil)
(delete-selection-mode 1)


;; 包设置
(setq package-archives '(
    ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
    ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
    ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
(setq package-check-signature nil) ;个别时候会出现签名校验失败
(require 'package) ;; 初始化包管理器
(unless (bound-and-true-p package--initialized)
   (package-initialize)) ;; 刷新软件源索引
(unless package-archive-contents
    (package-refresh-contents))


(unless (package-installed-p 'use-package)
   (package-refresh-contents)
   (package-install 'use-package))
(eval-and-compile
    (setq use-package-always-ensure t) ;不用每个包都手动添加:ensure t关键字
    (setq use-package-always-defer t) ;默认都是延迟加载，不用每个包都手动添加:defer t
    (setq use-package-always-demand nil)
    (setq use-package-expand-minimally t)
    (setq use-package-verbose t))
(require 'use-package)

;;Vim
(use-package evil)
(evil-mode 1)

(define-key evil-normal-state-map "i" 'evil-previous-line )
(define-key evil-normal-state-map "I" "5i" )
(define-key evil-normal-state-map "k" 'evil-next-line )
(define-key evil-normal-state-map "K" "5k" )
(define-key evil-normal-state-map "j" 'evil-backward-char )
(define-key evil-normal-state-map "J" "5j" )
(define-key evil-normal-state-map "L" "5l" )
(define-key evil-normal-state-map "zz" 'evil-save-modified-and-close )
(define-key evil-normal-state-map "s" 'evil-write )
(define-key evil-normal-state-map "h" 'evil-insert)
(define-key evil-normal-state-map "H" 'evil-insert-line)
(define-key evil-normal-state-map ";" 'evil-ex)

(define-key evil-normal-state-map (kbd "C-z") 'evil-mode)
(global-set-key (kbd "C-z") 'evil-mode)





(use-package restart-emacs)
;;lsp
(use-package lsp-mode
  ;; add prog-mode to lsp instead of adding one by one
  ;; :hook ((prog-mode . (lsp-deferred))
  :commands (lsp lsp-deferred)
  :hook ((lsp-mode . lsp-enable-which-key-integration)
	     (python-mode . lsp-deferred)
         (c-mode . lsp-deferred)
         (go-mode . lsp-deferred)
         (js-mode . lsp-deferred)
         (web-mode . lsp-deferred)
         (html-mode . lsp-deferred))
  :init (setq lsp-keep-workspace-alive nil ;; Auto kill LSP server
              lsp-enable-indentation t
              lsp-enable-on-type-formatting t
              lsp-auto-guess-root nil
              lsp-enable-snippet t
              lsp-modeline-diagnostics-enable t
              lsp-idle-delay 0.500
              lsp-completion-provider :capf)
  :config
  ;; Configure LSP Clients
  (use-package lsp-clients
    :ensure nil
    :functions (lsp-format-buffer lsp-organize-imports)))
(use-package lsp-ui
  :after lsp-mode
  :commands lsp-ui-mode
  :hook (lsp-mode . lsp-ui-mode)
  :init (setq lsp-ui-doc-enable t
              lsp-ui-doc-use-webkit nil
              lsp-ui-doc-delay .3
              lsp-ui-doc-include-signature t
              lsp-ui-doc-position 'bottom ;; top/bottom/at-point
              lsp-eldoc-enable-hover nil ;; Disable eldoc displays in minibuffer
              lsp-ui-sideline-enable t
              lsp-ui-sideline-show-hover t
              lsp-ui-sideline-show-code-actions t
              lsp-ui-sideline-show-diagnostics t
              lsp-ui-sideline-ignore-duplicate t
              lsp-headerline-breadcrumb-enable t)
  :config
  (setq lsp-ui-flycheck-enable nil)
  (treemacs-resize-icons 14))


(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list
  :init (treemacs-resize-icons 14))

(use-package dap-mode
  :diminish
  :hook ((lsp-mode . dap-mode)
         (dap-mode . dap-ui-mode)
	     (dap-mode . dap-tooltip-mode)
         (python-mode . (lambda() (require 'dap-python)))
         (go-mode . (lambda() (require 'dap-go)))
         (java-mode . (lambda() (require 'dap-java)))))




;;UI 设置
(use-package dracula-theme
  :init
  ;; (load-theme 'almost-mono-black t)
  (load-theme 'dracula t))
;; 自动补全
(use-package company
  :config
  (setq company-dabbrev-code-everywhere t
        company-dabbrev-code-modes t
        company-dabbrev-code-other-buffers 'all
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case t
        company-dabbrev-other-buffers 'all
        company-require-match nil
        company-minimum-prefix-length 2
        company-show-numbers t
        company-tooltip-limit 20
        company-idle-delay 0
        company-echo-delay 0
        company-tooltip-offset-display 'scrollbar
        company-begin-commands '(self-insert-command))
  (push '(company-semantic :with company-yasnippet) company-backends)
  :hook ((after-init . global-company-mode)))





(defvar run-current-file-before-hook nil "Hook for `run-current-file'. Before the file is run.")

(defvar run-current-file-after-hook nil "Hook for `run-current-file'. After the file is run.")
(defun run-current-go-file ()
  "Run or build current golang file.

To build, call `universal-argument' first.

Version 2018-10-12"
  (interactive)
  (when (not (buffer-file-name)) (save-buffer))
  (when (buffer-modified-p) (save-buffer))
  (let* (
         ($outputb "*run output*")
         (resize-mini-windows nil)
         ($fname (buffer-file-name))
         ($fSuffix (file-name-extension $fname))
         ($progName "go")
         $cmdStr)
    (setq $cmdStr (concat $progName " \""   $fname "\" &"))
    (if current-prefix-arg
        (progn
          (setq $cmdStr (format "%s build \"%s\" " $progName $fname)))
      (progn
        (setq $cmdStr (format "%s run \"%s\" &" $progName $fname))))
    (progn
      (message "running %s" $fname)
      (message "%s" $cmdStr)
      (shell-command $cmdStr $outputb )
      ;;
      )))
(defun run-current-file ()
  "Execute the current file.
For example, if the current buffer is x.py, then it'll call 「python x.py」 in a shell.
Output is printed to buffer “*run output*”.

The file can be Emacs Lisp, PHP, Perl, Python, Ruby, JavaScript, TypeScript, golang, Bash, Ocaml, Visual Basic, TeX, Java, Clojure.
File suffix is used to determine what program to run.

If the file is modified or not saved, save it automatically before run.

URL `http://ergoemacs.org/emacs/elisp_run_current_file.html'
Version 2020-09-24"
(interactive)
(let (
($outBuffer "*run output*")
(resize-mini-windows nil)
($suffixMap
;; (‹extension› . ‹shell program name›)
`(
  ("php" . "php")
  ("pl" . "perl")
  ("py" . "python")
  ("py3" . ,(if (string-equal system-type "windows-nt") "c:/Python32/python.exe" "python3"))
  ("rb" . "ruby")
  ("go" . "go run")
  ("hs" . "runhaskell")
  ;; ("js" . "node")
  ("js" . "deno run")
  ("ts" . "deno run") ; TypeScript
  ("tsx" . "tsc")
  ("mjs" . "node --experimental-modules ")
  ("sh" . "bash")
  ("clj" . "java -cp ~/apps/clojure-1.6.0/clojure-1.6.0.jar clojure.main")
  ("rkt" . "racket")
  ("ml" . "ocaml")
  ("vbs" . "cscript")
  ("tex" . "pdflatex")
  ("latex" . "pdflatex")
  ("java" . "javac")
  ;; ("pov" . "/usr/local/bin/povray +R2 +A0.1 +J1.2 +Am2 +Q9 +H480 +W640")
  ))
$fname
$fSuffix
$progName
$cmdStr)
(when (not (buffer-file-name)) (save-buffer))
(when (buffer-modified-p) (save-buffer))
(setq $fname (buffer-file-name))
(setq $fSuffix (file-name-extension $fname))
(setq $progName (cdr (assoc $fSuffix $suffixMap)))
(setq $cmdStr (concat $progName " \""   $fname "\" &"))
(run-hooks 'run-current-file-before-hook)
(cond
((string-equal $fSuffix "el")
(load $fname))
((string-equal $fSuffix "go")
(run-current-go-file))
((string-equal $fSuffix "java")
(progn
  (shell-command (format "javac %s" $fname) $outBuffer )
  (shell-command (format "java %s" (file-name-sans-extension
				    (file-name-nondirectory $fname))) $outBuffer )))
(t (if $progName
       (progn
	 (message "Running")
	 (shell-command $cmdStr $outBuffer ))
     (error "No recognized program file suffix for this file."))))
    (run-hooks 'run-current-file-after-hook)))
