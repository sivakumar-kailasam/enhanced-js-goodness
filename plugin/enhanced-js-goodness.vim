"---------------------------------------------------------------------------
" Enhanced JS goodness
" @author Sivakumar Kailasam
"


autocmd Filetype javascript setlocal iskeyword-=.

HiLink javaScriptTemplateString     String

syntax keyword javaScriptIdentifier     arguments this let var void yield const
syntax keyword javaScriptReserved       abstract enum int short boolean export interface static byte extends long super char final native synchronized class float package throws const goto private transient debugger implements protected volatile double import public let


"---------------------------------------------------------------------------
" Ember.JS functions
"

function! EmberExtractImport()
	normal! yypv$:s/Ember.kb\.//gku3dwdkrwd$0iconst {A} = Ember; s
endfunction

function! EmberSimplifyFn()
	normal! mmvwdvwy?nkb= Ember;kuA,P>>Akb``
endfunction

function! EmberOptimizeImport()
	normal! ?= Ember;b%kd000v/}ku$:sort i ukbkbkbu0v/}ku$:s/,//g?{kd0v/}ku$:s/$/,/gAkb s
endfunction



"---------------------------------------------------------------------------
" Plugin bindings
"

if !exists('g:enhanced-js-syntax_map_keys')
    let g:enhanced-js-syntax_map_keys = 1
endif

if !exists('g:enhanced-js-syntax_map_prefix')
    let g:enhanced-js-syntax_map_prefix = '<leader>'
endif

if g:enhanced-js-syntax_map_keys
	execute "nnoremap" g:enhanced-js-syntax_map_prefix."ei" ":call EmberExtractImport()<CR>"
	execute "nnoremap" g:enhanced-js-syntax_map_prefix."es" ":call EmberSimplifyFn()<CR>"
	execute "nnoremap" g:enhanced-js-syntax_map_prefix."eo" ":call EmberExtractImport()<CR>"
endif


