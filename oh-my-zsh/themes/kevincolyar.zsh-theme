# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'

if [[ -s ~/.rvm/scripts/rvm ]] ; then 
  local rvm_ruby='%{$fg[red]%}‹$(~/.rvm/bin/rvm-prompt i v g)›%{$reset_color%} '
else
  local rvm_ruby=''
fi

# local git_branch='$(git_prompt_info)%{$reset_color%}'
local git_branch='$(git_prompt_info)'

# PROMPT="╭─${user_host} ${current_dir} ${rvm_ruby} ${git_branch}
# ╰─%B$%b "
# PROMPT="${user_host}${current_dir} ${rvm_ruby} ${git_branch}%B$%b "
# PROMPT="%~ ${rvm_ruby}${git_branch}%B$%b "
# RPS1="${return_code}"

#  RPS1="${current_dir} ${rvm_ruby}${git_branch}%B"
RPS1="${current_dir}${rvm_ruby}${git_branch}%"
PROMPT="%{$fg[green]%}>%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
