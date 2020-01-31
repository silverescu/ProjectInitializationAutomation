This is a bash script used to automate the creation of new projects.
It takes one parameter as the folder/project name.
Creates and moves into the new folder.
Creates a new Github repo using the folders name.
Initializes and adds the remote repo.
Creates a README.md file.
Commits and pushes the local repo to Github.


### Install:

    1. Create a new Api key in your Github account (Settings - Developer settings - Personal access tokens )
    2. git clone "https://github.com/silverescu/ProjectInitializationAutomation.git"
    3. cd ProjectInitializationAutomation
    4. In my_commands.sh update "git_token", "git_username", "path" variables.
    5. source my_commands.sh
    
### Usage:

    To run the script type in "create <name of folder>"


### Other API calls:

    Create Github repo

    curl -i -H "Authorization: token <personal access token>" -d '{"name": "<repo name>", "auto_init": false, "private": false}' https://api.github.com/user/repos

    Delete Github repo

    curl -X DELETE -H 'Authorization: token <personal access token>' https://api.github.com/repos/<username>/<repo>

    List Github repo

    curl -i -H "Authorization: token <personal access token>" https://api.github.com/user/repos




