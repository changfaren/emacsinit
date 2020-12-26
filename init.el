(put 'narrow-to-region 'disabled nil)


;; https://www.youtube.com/watch?v=74zOY-vgkyw
(menu-bar-mode -1)
(tooltip-mode 1)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-fringe-mode 10)
(setq visible-bell t); replace audible bell with visible bell. Cool!

(ivy-mode 1) ;; enable auto completion using ivy package.
(setq ivy-count-format "(%d/%d) ") ;; show number of buffers

(unless (or (package-installed-p 'use-package)
            dw/is-guix-system)
  (package-install 'use-package))

(unless (package-installed-p 'doom-themes)     
  (package-install 'doom-themes))

(unless (package-installed-p 'doom-modeline)     
  (package-install 'doom-modeline))

(doom-modeline-mode 1)
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1) )

; Note: run this installation of fonts once.
; all-the-icons-install-fonts
; (setq all-the-icons-color-icons nil)

(require 'use-package)
(use-package counsel
  :bind (("M-x" . counsel-M-x)
	 ("C-s" . swiper)
         ("C-x b" . counsel-switch-buffer) ;; realtime buffer display
         ("C-x C-f" . counsel-find-file)
         ))


(windmove-default-keybindings) ;move between window with S-direction
;; override S-direction key in org-mode

(org-mode)
(define-key org-mode-map (kbd "<S-right>") nil)
(define-key org-mode-map (kbd "<S-left>") nil)
(define-key org-mode-map (kbd "<S-up>") nil)
(define-key org-mode-map (kbd "<S-down>") nil)


(desktop-read "~/.emacs.d") ;; read .emacs.desktop

(load-theme 'doom-one)
