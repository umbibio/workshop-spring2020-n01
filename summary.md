## Why git?

- It's a Version Control System (VCS). It
helps to keep track of evolving code
- Allows collaboration. Several people
can edit code and then all the work can 
be merged together. This is accomplished
through 'branches'
- Code becomes accessible, people
interested may easily download and use it

Quite often, software specifications 
represent a barrier for the use of shared
code.
One use case for Git is sharing a way to 
easily get a working environment for your
code. This can be achieved through Docker 
containers.

## Docker containers

- Provides a way for managing app deployment
- A container refers to an isolated environment
for running the app
- The container will run a linux OS installation
- You apps installation steps are specified in
the Dockerfile
- A docker image is then built through a Dockerfile.
This step is done once, and then the image can be 
shared with others. Users would only need to download
and run the image.
