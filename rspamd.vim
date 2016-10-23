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

" Variables
syntax keyword rspamdVarDef CONFDIR
syntax keyword rspamdVarDef DBDIR
syntax keyword rspamdVarDef LOCALCONFDIR
syntax match rspamdVarRef "$\<CONFDIR\>"
syntax match rspamdVarRef "$\<DBDIR\>"
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

" Lua and C module parameter
syntax keyword rspamdAntivirusKeyword first second third attachments_only
syntax keyword rspamdASNKeyword provider_type provider_info ip4 ip6
syntax keyword rspamdDMARCKeyword reporting quarantine
syntax keyword rspamdFannKeyword fann_file train max_train max_epoch spam_score ham_score use_settings
syntax keyword rspamdFuzzyCheckKeyword read_only skip_unknown algorithm fuzzy_map
syntax keyword rspamdIPscoreKeyword country ipnet ip asn_prefix country_prefix ipnet_prefix lower_bound
syntax keyword rspamdMIMEtypesKeyword extension_map bad_extensions bad_archive_extensions archive_extensions html txt pdf
syntax keyword rspamdMXcheckKeyword timeout symbol_bad_mx symbol_no_mx symbol_good_mx
syntax keyword rspamdPhishingKeyword phishtank_enabled phishtank_map domains redirector_domains strict_domains openphish_map openphish_premium
syntax keyword rspamdRepliesKeyword message

highlight link rspamdKeyword Keyword
highlight link rspamdModuleKeyword Function

highlight link rspamdWorkerKeyword Keyword
highlight link rspamdIncludeKeyword Statement
highlight link rspamdIncludeAssign Special

highlight link rspamdAntivirusKeyword Keyword
highlight link rspamdRedisKeyword Keyword
highlight link rspamdASNKeyword Keyword
highlight link rspamdDMARCKeyword Keyword
highlight link rspamdFannKeyword Keyword
highlight link rspamdFuzzyCheckKeyword Keyword
highlight link rspamdIPscoreKeyword Keyword
highlight link rspamdMIMEtypesKeyword Keyword
highlight link rspamdMXcheckKeyword Keyword
highlight link rspamdPhishingKeyword Keyword
highlight link rspamdRepliesKeyword Keyword

highlight link rspamdOperator Operator
highlight link rspamdBool Boolean
highlight link rspamdString String
highlight link rspamdVar Error
highlight link rspamdNumber Number
highlight link rspamdComment Comment

let b:current_syntax = "rspamd"
