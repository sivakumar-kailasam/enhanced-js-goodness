"---------------------------------------------------------------------------
" Enhanced JS goodness
" @author Sivakumar Kailasam
"

"---------------------------------------------------------------------------
" Ember.JS functions
"

function! EmberExtractImport()
	normal! yyp�ku3dwd�krwd$0iconst {A} = Ember;�kd2wdwd�kr
endfunction

function! EmberSimplifyFn()
    normal! mmvwdyw?= Ember;�kuA,P>>``:exe %s�kl�kl'�kr�kr/' .�kb�kl�klEmber\.�kr . @0 . '/' .@0�kl�kl �kr�kr . ''�kl/ge
    normal! ``
endfunction

function! EmberOptimizeImport()
    normal! ?= Ember;0%v%:%�kbs/,//g/�kb?{�kd0v/}�ku$:sort u/�kb?{�kd0v/}�ku�ku$:s/$/,/g:noh
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
	execute "nnoremap" g:enhanced_js_syntax_map_prefix."eo" ":call EmberOptimizeImport()<CR>"
endif


