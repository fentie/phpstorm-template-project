Quick, basic script to clone project settings fora PhpStorm project from an initial template project to a new project (stored in a templateProject folder). To create a template project, just find an existing project that's set up the way you like it and run this:

    cp -R /path/to/code/project/.idea /path/to/code/templateProject

##Usage:

    clone-project-settings.sh newProjectName

Your project name is the name of the folder your code has just been checked out into. For instance, if I have code in directories like this:

templateProject
ticket1
ticket2

And I check out a new branch, ticket3…

templateProject
ticket1
ticket2
ticket3

I'd use 

    clone-project-settings.sh ticket3

to create a PhpStorm project out of the files in the ticket3 folder, copying all the settings from my templateProject.