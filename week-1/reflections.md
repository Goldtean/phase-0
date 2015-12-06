# 1.1 Think About Time

I am a huge believer in "fake it till you make it" because I faked it until I made it, and once I was it in a Disney like moment realized that I had been it all the time. I just read about the opposite approach, which is to do small things to build your confidence. That seemed to be the over-arching theme, which I semi discovered already. For example, I bought a $40 chin up bar at Wal-Mart and started doing as many chin-ups as I possibly could twice a day. At first it was 1, now I can do 8.
Time Boxing is starting a task and stopping at a pre-determined time period rather than when the task is complete. It is similar to the pomodoro technique. Currently, I use my Outlook calendar at work for time management and I use the calendar in my head the rest of the time. It works, but since I've lived with access to the internet for the last decade and a half and am not a billionaire or even a millionaire I think I could improve.
I did not have an overall plan for Phase 0 other than to try to start everything as early as possible. My new strategy is to incorporate the time box by starting a timer when I start something and reviewing the work I've done by the end. I may start an excel spreadsheet to track my progress. I also plan on starting some new habits, and am thinking of some existing habits to use as anchors.

# 1.2 The Command Line

Bash is the Terminal, which is a more direct way to interact with your computer. The most challenging part for me was watching the video and wondering how I can turn my background black and my text green so it looks like in The Matrix! Actually, the video was a bit tough at first without reading through The Command Line Crash Course.
I was able to use all the commands, and I would say that the one that strikes me as the most useful was "cat", which lets you write into files from the terminal. But overall they're all useful - moving, copying, doing a "less" to see what's inside, or a "cat" to stream what's inside.
This list looked really scary, but I think I know them all.
path to current directory -pwd
list of files and directories in current directory -ls
move a file or directory -mv
move into a directory -cd
cd .. moves you into the directory your directory is in -../
create empty files -touch
make an empty directory -mkdir
see what's in a file. Loads file faster because it doesn't load the entire file. Can skip pages, etc. -less 
remove directory. Only works when it's empty -rmdir
remove file -rm
gives help, but "man" is better -help

# 1.4 Forking and Cloning


If I were to write instructions for a new person, it would go something like this:
1 - Create GitHub account
2 - Go to the top right of your profile, and hit "New Repository"
3 - You can fork a repository by finding it on GitHub and then hitting the fork button
4 - Go on bash in the place you want to locally store the repository (pwd if you're not sure), then type "git clone ...", with the ... being the link form GitHub of your repository (or the one you forked)
Forking a repository is good for things like an open source project, or if you want to snoop on other people's code. It could also be useful if you have a base of code that you want to use for multiple projects.
I struggled with GitHub in that I wasn't sure how to use it when I first got it and it confused me. Learning the terminal commands makes it make sense. The other challenge I had was trying to do the bonus thing and add and remove a repository. I hope I did it the right way, but what I did was I cloned it to my local drive then I did this command "rm -rf p0-cli-exploration". rmdir does not work because it's not empty. rm -rf works because it recursively removes all it's contents. I don't know what that means, but I know it works and it makes me sound fancy so I wrote it in my notes and it came in handy!