A quick, basic script to clone project settings for a PhpStorm project from an initial template project to a new project (stored in a templateProject folder). To create a template project, start a new project named templateProject and apply any settings you like.

##Usage:

    clone-project-settings.sh newProjectName

Your project name is the name of the folder into which your code has just been checked out. For instance, if I have code in directories like this:

* templateProject
* ticket1
* ticket2

And I check out a new branch, ticket3...

* templateProject
* ticket1
* ticket2
* ticket3

I'd use 

    clone-project-settings.sh ticket3

to create a PhpStorm project out of the files in the ticket3 folder, copying all the settings from my templateProject.
