# LinuxDropboxRemoteControl
Remote control your computer with Dropbox on Linux

Dropbox is a service that allows you to sync files and folders on multiple computers. It does this by syncing the files and folders to the Dropbox server and then syncing them to any other device (computers or smartphones) that you may have installed Dropbox on. Its primary purpose is to ensure that any files in your Dropbox folder are immediately accessible to any other device that you have installed Dropbox on. We can take advantage of this syncing feature and use it as a means to transfer instructions from one device to another. Here’s a basic example of using a smartphone to tell a computer (the target) to print out some documents.

First, the target needs a way to know where to look for instructions and how often. To do this we can write a basic shell script that looks in a specific folder for instructions. In this case it will monitor the contents of $HOME/Dropbox/Scripts every 10 seconds. Let’s call it "runcommand.sh"

With the script checking for instructions every 10 seconds, we can now use another Dropbox-enabled device, in this case a smartphone, to send it instructions.

The "to-print.sh" script will print out the PDFs saved in $HOME/Dropbox/ToPrint

This script is short enough that it can be comfortably typed out on a smartphone and then saved into its Dropbox/Scripts folder. Once it’s saved, Dropbox will sync it to the target, the runcommand.sh script will see it and execute the contents of the file.

This works with any operating system and device that Dropbox can run on. Of course you’re not limited to shell scripts, any programming language will do. You could also use the operating system’s built in scheduler to run the script rather than have it sleep.

https://blog.techorganic.com/2010/11/24/remote-control-your-computer-with-dropbox/
