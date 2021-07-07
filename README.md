## Running Docker Windows Images with python 3.9

Setup:

Install docker for windows and set it up to run windows containers

To make it run Windows containers, having the docker for windows running, right click on the tray, "Switch to windows containers" and done

Then run `docker build -t saussifufu .` ,  *pray a little bit* and after build is complete:  `docker run -ti saussifufu cmd.exe`

Feel free to mount directories and use docker as you normally would do

Bonus <-> Bonus <-> Bonus

if you want to have a docker image with chocolatey installed then just check the directory `gluglu`