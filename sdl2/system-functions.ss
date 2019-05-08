(define-sdl-func string sdl-get-base-path () "SDL_GetBasePath")
(define-sdl-func string sdl-get-pref-path ((org string) (app string)) "SDL_GetPrefPath")
(define-sdl-func sdl-bool-t sdl-is-tablet () "SDL_IsTablet")
