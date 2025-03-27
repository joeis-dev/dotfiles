# Give execution permissions to the scripts 
```` 
$ sudo chmod a+x install.sh pack.sh
````
# How to use? 
To pack your dot files just execute pack.sh
To deploy your dot files just execute install.sh

If you'd like to get rid of all the symbolic links that Stow created in your home folder, you can do that with the following command
```` 
$ stow -v -t -D $HOME .

```` 
# Prepare dot files to be stow 
```` 
$ stow -v -t $HOME .
````

# Stow specific module 
```` 
$ stow -v -t $HOME [module-name]
````

# Install Starship ohmyzsh theme 
```` 
$ eval "$(starship init zsh)"
````

# Install LazyGit and auth with GitHub token 
```` 
https://github.com/jesseduffield/lazygit
````

# Install fzf
````
$ sudo apt-get install fzf
````

# Add new folder/files to the repo
````
stow -v -t {ORIGIN} {DESTINATION}
````
Note that subfolders and its files will be linked to the destination folder recursively.
````

