__custom_prompt () {
  branch=`git branch 2> /dev/null | grep \* | sed 's/* //'`

  home=$(echo $HOME | sed 's/\//\\\//g')
  cwd=`pwd | sed "s/$home\//~\//"`

  if [[ "$branch" = "" ]]; then
    branch=`git status 2> /dev/null | grep "On branch" | sed -E 's/^.*On branch //'`
  fi

  if [[ "$branch" = "" ]]; then
    branch=" $branch"
  else
    branch=" %{$fg_bold[blue]%}[$branch]"
  fi

  ruby_version=`ruby -e "puts RUBY_VERSION"`

  if [ -f Gemfile.lock ]; then
    rails_version=`cat Gemfile.lock | grep -E " +rails \([0-9]+" | sed 's/ *rails (\(.*\))/\1/'`
  fi

  ruby_prompt=""

  if [[ "$rails_version" != "" ]]; then
    rails_prompt="${rails_version}#"
  fi


  ruby_prompt="%{$fg_bold[green]%}[${USER}|${rails_prompt}${ruby_version}]%{$reset_color%} "

  echo "\n${ruby_prompt}%{$reset_color%}%{$fg_bold[cyan]%}${cwd} ${branch}%{$reset_color%}\n\$ "
}

PROMPT='$(__custom_prompt)'
