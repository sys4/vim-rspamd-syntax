if exists("b:current_syntax")
    finish
endif

syntax keyword rspamdKeyword symbol
syntax keyword rspamdKeyword rule
syntax keyword rspamdKeyword weight
syntax keyword rspamdKeyword metric
syntax keyword rspamdKeyword hash
syntax keyword rspamdKeyword expire
syntax keyword rspamdKeyword type
syntax keyword rspamdKeyword patterns
syntax keyword rspamdKeyword whitelist
syntax keyword rspamdKeyword key_prefix
syntax keyword rspamdKeyword action actions
syntax keyword rspamdKeyword host servers
syntax keyword rspamdKeyword score scores max_score min_score score_divisor
syntax keyword rspamdKeyword no_action greylist add_header rewrite_subject soft_bounce reject
syntax match rspamdKeyword "\s*worker"
syntax match rspamdKeyword "\s*\.include"

syntax keyword rspamdModuleKeyword antivirus
syntax keyword rspamdModuleKeyword asn
syntax keyword rspamdModuleKeyword dcc
syntax keyword rspamdModuleKeyword dmarc
syntax keyword rspamdModuleKeyword fann_scores
syntax keyword rspamdModuleKeyword ip_score
syntax keyword rspamdModuleKeyword mx_check
syntax keyword rspamdModuleKeyword redis
syntax keyword rspamdModuleKeyword replies

syntax keyword rspamdVarDef DBDIR
syntax keyword rspamdVarDef CONFDIR
syntax keyword rspamdVarDef LOCALCONFDIR
syntax match rspamdVarRef "$\<DBDIR\>"
syntax match rspamdVarRef "$\<CONFDIR\>"
syntax match rspamdVarRef "$\<LOCAL_CONFDIR\>"

syntax match rspamdComment "\v#.*$"
syntax match rspamdComment "/\*.*\*/"
syntax match rspamdOperator "\v\+"
syntax match rspamdOperator "\v-"
syntax match rspamdOperator "\v\*\="
syntax match rspamdOperator "\v/\="
syntax match rspamdNumber "\<\d\+\>"
syntax match rspamdVar "\$\w\+" contains=rspamdVarRef,rspamdVarDef

syntax region rspamdString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax keyword rspamdBool true false

syntax keyword rspamdWorkerKeyword bind_socket
syntax keyword rspamdWorkerKeyword count
syntax keyword rspamdIncludeKeyword try priority duplicate
syntax keyword rspamdIncludeAssign merge
syntax keyword rspamdASNKeyword provider_type provider_info ip4 ip6
syntax keyword rspamdIPscoreKeyword country ipnet ip asn_prefix country_prefix ipnet_prefix lower_bound
syntax keyword rspamdRepliesKeyword message
syntax keyword rspamdFannKeyword fann_file train max_train max_epoch spam_score ham_score use_settings
syntax keyword rspamdMXcheckKeyword timeout symbol_bad_mx symbol_no_mx symbol_good_mx
syntax keyword rspamdAntivirusKeyword first second third
syntax keyword rspamdDMARCKeyword reporting

highlight link rspamdKeyword Keyword
highlight link rspamdModuleKeyword Function

highlight link rspamdWorkerKeyword Keyword
highlight link rspamdIncludeKeyword Statement
highlight link rspamdIncludeAssign Special
highlight link rspamdRedisKeyword Keyword
highlight link rspamdASNKeyword Keyword
highlight link rspamdIPscoreKeyword Keyword
highlight link rspamdRepliesKeyword Keyword
highlight link rspamdFannKeyword Keyword
highlight link rspamdMXcheckKeyword Keyword
highlight link rspamdAntivirusKeyword Keyword
highlight link rspamdDMARCKeyword Keyword

highlight link rspamdOperator Operator
highlight link rspamdBool Boolean
highlight link rspamdString String
highlight link rspamdVar Error
highlight link rspamdNumber Number
highlight link rspamdComment Comment

let b:current_syntax = "rspamd"
