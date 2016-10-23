if exists("b:current_syntax")
    finish
endif

" Common keywords
syntax keyword rspamdKeyword description
syntax keyword rspamdKeyword expire
syntax keyword rspamdKeyword group
syntax keyword rspamdKeyword hash
syntax keyword rspamdKeyword key_prefix
syntax keyword rspamdKeyword learn_condition
syntax keyword rspamdKeyword patterns
syntax keyword rspamdKeyword rule
syntax keyword rspamdKeyword symbol
syntax keyword rspamdKeyword type
syntax keyword rspamdKeyword weight
syntax keyword rspamdKeyword whitelist

syntax keyword rspamdKeyword action actions
syntax keyword rspamdKeyword facility level
syntax keyword rspamdKeyword host servers
syntax keyword rspamdKeyword pidfile filename
syntax keyword rspamdKeyword no_action greylist add_header rewrite_subject soft_bounce reject
syntax keyword rspamdKeyword score scores max_score min_score score_divisor flag

" Configuration sections
syntax match rspamdKeyword "\s*\.include"
syntax match rspamdKeyword "\s*logging"
syntax match rspamdKeyword "\s*metrics"
syntax match rspamdKeyword "\s*mime_types"
syntax match rspamdKeyword "\s*options"
syntax match rspamdKeyword "\s*phishing"
syntax match rspamdKeyword "\s*worker"

syntax keyword rspamdWorkerKeyword bind_socket
syntax keyword rspamdWorkerKeyword count
syntax keyword rspamdIncludeSpecial merge
syntax keyword rspamdIncludeKeyword try priority duplicate

" Lua and C modules
syntax keyword rspamdModuleKeyword antivirus
syntax keyword rspamdModuleKeyword asn
syntax keyword rspamdModuleKeyword dcc
syntax keyword rspamdModuleKeyword dmarc
syntax keyword rspamdModuleKeyword fann_scores
syntax keyword rspamdModuleKeyword fuzzy_check
syntax keyword rspamdModuleKeyword ip_score
syntax keyword rspamdModuleKeyword mx_check
syntax keyword rspamdModuleKeyword phishing
syntax keyword rspamdModuleKeyword redis
syntax keyword rspamdModuleKeyword replies

" Lua and C module parameter
" antivirus
syntax keyword rspamdParamKeyword first second third attachments_only
" asn
syntax keyword rspamdParamKeyword provider_type provider_info ip4 ip6
" dmarc
syntax keyword rspamdParamKeyword reporting quarantine
" fann_scores
syntax keyword rspamdParamKeyword fann_file train max_train max_epoch spam_score ham_score use_settings
" fuzzy_check
syntax keyword rspamdParamKeyword read_only skip_unknown algorithm fuzzy_map
" ip_score
syntax keyword rspamdParamKeyword country ipnet ip asn_prefix country_prefix ipnet_prefix lower_bound
" mime_types
syntax keyword rspamdParamKeyword extension_map bad_extensions bad_archive_extensions archive_extensions html txt pdf
" mx_check
syntax keyword rspamdParamKeyword timeout symbol_bad_mx symbol_no_mx symbol_good_mx
" phishing
syntax keyword rspamdParamKeyword phishtank_enabled phishtank_map domains redirector_domains strict_domains openphish_map openphish_premium
" replies
syntax keyword rspamdParamKeyword message

" Variables
syntax keyword rspamdVarDef CONFDIR
syntax keyword rspamdVarDef DBDIR
syntax keyword rspamdVarDef LOCALCONFDIR
syntax match rspamdVarRef "$\<CONFDIR\>"
syntax match rspamdVarRef "$\<DBDIR\>"
syntax match rspamdVarRef "$\<LOCAL_CONFDIR\>"

syntax region rspamdString start=/"/ skip=/\\"/ end=/"/
syntax keyword rspamdBool true false yes no on off
syntax keyword rspamdTodo TODO FIXME XXX contained

syntax match rspamdComment "\v#.*$"
syntax match rspamdOperator "\v\+"
syntax match rspamdOperator "\v-"
syntax match rspamdOperator "\v\*\="
syntax match rspamdOperator "\v/\="
syntax match rspamdNumber "\<\d\+\>"
syntax match rspamdVar "\$\w\+" contains=rspamdVarDef
syntax region rspamdComment matchgroup=rspamdComment start="/\*" end="\*/" contains=rspamdTodo
syntax region rspamdHereDocText matchgroup=rspamdString start="<<[-~.]*\z([A-Z]\+\)" end="^\s*\z1" contains=NONE

highlight link rspamdKeyword Keyword
highlight link rspamdModuleKeyword Type
highlight link rspamdParamKeyword Keyword

highlight link rspamdVarDef PreProc
highlight link rspamdVarRef PreProc
highlight link rspamdOperator Operator
highlight link rspamdBool Boolean
highlight link rspamdString String
highlight link rspamdVar PreProc
highlight link rspamdNumber Number
highlight link rspamdHereDocText String
highlight link rspamdTodo Todo
highlight link rspamdComment Comment

highlight link rspamdWorkerKeyword Keyword
highlight link rspamdIncludeKeyword Type
highlight link rspamdIncludeSpecial Special


let b:current_syntax = "rspamd"
