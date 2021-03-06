#!r6rs

(library
    (sdl2 ttf)
  (export
   ;;;init
   ttf-init
   ttf-was-init
   ttf-quit

   ;;;info
   ttf-linked-version

   ;;;loading
   ttf-open-font
   ttf-open-font-rw
   ttf-open-font-index
   ttf-open-font-index-rw

   ;;;freeing
   ttf-close-font

   ;;;global attributes
   ttf-byte-swapped-unicode

   ;;;font style
   ttf-get-font-style
   ttf-set-font-style
   ttf-get-font-outline
   ttf-set-font-outline

   ;;;font settings
   ttf-get-font-hinting
   ttf-set-font-hinting
   ttf-get-font-kerning
   ttf-set-font-kerning

   ;;;font metrics
   ttf-font-height
   ttf-font-ascent
   ttf-font-descent
   ttf-font-line-skip

   ;;;font attributes
   ttf-font-faces
   ttf-font-face-is-fixed-width
   ttf-font-face-family-name
   ttf-font-face-style-name

   ;;;glyphs
   ttf-glyph-is-provided
   ttf-glyph-metrics

   ;;;text metrics
   ttf-size-text
   ttf-size-ut-f8
   ttf-size-unicode

   ;;;render solid
   ttf-render-text-solid
   ttf-render-ut-f8-solid
   ttf-render-unicode-solid
   ttf-render-glyph-solid

   ;;;render shaded
   ttf-render-text-shaded
   ttf-render-ut-f8-shaded
   ttf-render-unicode-shaded
   ttf-render-glyph-shaded

   ;;;render blended
   ttf-render-text-blended
   ttf-render-ut-f8-blended
   ttf-render-unicode-blended
   ttf-render-glyph-blended

   ;;;library init
   sdl-ttf-library-init
   sdl-shim-ttf-init )
  
  (import (chezscheme) 
	  (ffi-utils)
	  (sdl2)
	  (only (srfi s1 lists) fold)
	  (only (thunder-utils) string-replace string-split) 
	  (only (srfi s13 strings) string-delete string-suffix? string-prefix?)
	  (srfi s14 char-sets))
  
  (include "ttf-types.ss")
  (include "ttf-shim-functions.ss")
  (include "ttf-functions.ss")

  (define (sdl-ttf-library-init . l)
    (load-shared-object (if (null? l) "libSDL2_ttf.so" l)))
  (define (sdl-shim-ttf-init . l)
    (load-shared-object (if (null? l) "ttf-shim/ttfshim.so" l))))
