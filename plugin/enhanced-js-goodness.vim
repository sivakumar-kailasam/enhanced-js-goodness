"---------------------------------------------------------------------------
" Enhanced JS goodness
" @author Sivakumar Kailasam
"

"---------------------------------------------------------------------------
" Ember.JS functions
"

function! EmberExtractImport()
	normal! yyp�ku3dwd�krwd$0iconst {A} = Ember;�kdwwwdbd�kr
endfunction

function! EmberSimplifyFn()
	normal! mmvwdyw?= Ember;^M<80>kuA,^M^[P>>``
endfunction

function! EmberOptimizeImport()
	normal! ?= Ember;b%kd000v/}ku$:sort i ukbkbkbu0v/}ku$:s/,//g?{kd0v/}ku$:s/$/,/gAkb s
endfunction



"---------------------------------------------------------------------------
" Plugin bindings
"

if !exists('g:enhanced_js_syntax_map_keys')
    let g:enhanced_js_syntax_map_keys = 1
endif

if !exists('g:enhanced_js_syntax_map_prefix')
    let g:enhanced_js_syntax_map_prefix = '<leader>'
endif

if g:enhanced_js_syntax_map_keys
	execute "nnoremap" g:enhanced_js_syntax_map_prefix."ei" ":call EmberExtractImport()<CR>"
	execute "nnoremap" g:enhanced_js_syntax_map_prefix."es" ":call EmberSimplifyFn()<CR>"
	execute "nnoremap" g:enhanced_js_syntax_map_prefix."eo" ":call EmberExtractImport()<CR>"
endif


