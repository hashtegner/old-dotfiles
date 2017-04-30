__custom_prompt () {
  branch=`git branch 2> /dev/null | grep \* | sed 's/* //'`

  home=$(echo $HOME | sed 's/\//\\\//g')
  cwd=`pwd | sed "s/$home\//~\//"`

  if [[ "$branch" = "" ]]; then
    branch=`git status 2> /dev/null | grep "On branch" | sed -E 's/^.*On branch //'`
  fi

  if [[ "$branch" = "" ]]; then
    branch=" "
  else
    branch=" %{$fg[red]%}$branch "
  fi

  ruby_version=`ruby -e "puts RUBY_VERSION"`

  if [ -f Gemfile.lock ]; then
    rails_version=`cat Gemfile.lock | grep -E " +rails \([0-9]+" | sed 's/ *rails (\(.*\))/\1/'`
  fi

  if [[ "$rails_version" != "" ]]; then
    rails_prompt="${rails_version}@"
  fi

  ruby_prompt="%{$fg[yellow]%}${rails_prompt}${ruby_version}%{$reset_color%}"

  echo "\n%{$fg_bold[gray]%}${cwd}${reset_color}${branch}%{$reset_color%}${ruby_prompt}\n➜ "
}

setopt promptsubst

PS1='$(__custom_prompt)'
