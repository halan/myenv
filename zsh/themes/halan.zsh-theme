local user="%(!.%{$fg[blue]%}.%{$fg_bold[blue]%})%n%{$reset_color%}"
local host="@${host_repr[$(hostname)]:-$(hostname)}%{$reset_color%}"
local time="%{$fg[blue]%}%D{[%I:%M:%S]}%{$reset_color%}"
local dir="%{$reset_color%}%{$fg[white]%}[%~]%{$reset_color%}"
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"


PROMPT=$'╭─ ${user} $fg[yellow]$(rvm_prompt_info) ${dir} $(git_prompt_info)\
╰─>%{$fg[blue]%} $%{$fg_bold[blue]%} %{$reset_color%} '
RPS1="${return_code} ${time}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"

