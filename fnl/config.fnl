
;; TAKEN FROM SHAUN SINGH @ GITHUB.COM
;; disable unnecessary plugins & providers
(let [built-ins [;;:netrw
                 ;;:netrwPlugin
                 ;;:netrwSettings
                 ;;:netrwFileHandlers
                 :gzip
                 :zip
                 :zipPlugin
                 :tar
                 :tarPlugin
                 :getscript
                 :getscriptPlugin
                 :vimball
                 :vimballPlugin
                 :2html_plugin
                 :logipat
                 :rrhelper
                 :spellfile_plugin
                 :matchit]
      providers [:perl :python :python3 :node :ruby]]
  (each [_ v (ipairs built-ins)]
    (let [b (.. :loaded_ v)]
      (tset vim.g b 1)))
  (each [_ v (ipairs providers)]
    (let [p (.. :loaded_ v :_provider)]
      (tset vim.g p 0))))


(vim.api.nvim_command "set number")
