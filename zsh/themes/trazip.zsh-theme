function collapse_pwd {
  echo $(pwd | sed -e "s,^$HOME,~,")
}

function ruby_ps1 {
	ruby_version=`rbenv version | awk '{print $1}'`
  echo $ruby_version
} 

local git_branch='$(git_prompt_info)%{$reset_color%}$(git_remote_status)'

PROMPT="%{$FG[198]%}%~%{$reset_color%} using %{$FG[009]%}Ruby $(ruby_ps1)%{$reset_color%} ${git_branch} 
$FG[013]❯ "

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$FG[112]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[214]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""
