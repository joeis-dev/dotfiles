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

# Local Development & Authentication

This repository includes a `sync.sh` script to automate backing up your dotfiles to GitHub. To use it, you'll need to provide your GitHub credentials in a local `.env` file.

1.  **Create the `.env` file:**
    In the root of this repository, create a file named `.env`.

2.  **Add your credentials:**
    Add the following lines to the `.env` file, replacing the placeholder values with your actual GitHub username and a [Personal Access Token (PAT)](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token):

    ```bash
    export GITHUB_USER="your_github_username"
    export GITHUB_TOKEN="your_personal_access_token"
    ```

    **Important:** The `.env` file is included in the `.gitignore` and will not be committed to the repository.

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

