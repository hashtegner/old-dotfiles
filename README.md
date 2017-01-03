# alesshh dotfiles (wip)

Based on [thoughtbot/dotfiles](htts://github.com/thoughtbot/dotfiles).

## Requirements


### ZSH

Install and setup [zsh](http://www.zsh.org/) as default shell:

    chsh -s $(which zsh)


### RCM 

Install [rcm](https://github.com/thoughtbot/rcm) to doftiles managment:

    brew tap thoughtbot/formulae
    brew install rcm


## Install

Clone onto your laptop:

    git clone https://github.com/alesshh/dotfiles.git ~/.dotfiles

Install the dotfiles:

    rcup

This command will create symlinks for config files in your home directory.
You can safely run `rcup` multiple times to update.

    rcup

You should run `rcup` after pulling a new version of the repository to symlink
any new files in the repository.

Make your own customizations
----------------------------

Put your customizations in dotfiles appended with `.local`:

* `~/.aliases.local`
* `~/.gitconfig.local`
* `~/.vimrc.bundles.local`
* `~/.zshrc.local`

For example, your `~/.aliases.local` might look like this:

    # Productivity
    alias todo='$EDITOR ~/.todo'

Your `~/.gitconfig.local` might look like this:

    [alias]
      l = log --pretty=colored
    [pretty]
      colored = format:%Cred%h%Creset %s %Cgreen(%cr) %C(bold blue)%an%Creset
    [user]
      name = John Doe
      email = john@doe.com


## License

(The MIT License)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
