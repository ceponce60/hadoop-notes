# Sets up ssh on cluster systems involved in hadoop
#
#
#
#
#
# Cannot store public key here... how to load it but while hiding it?
# I dont want to simply ingore this file and hardcode it. perhaps...
# I can store local directory and push from local system.

# Clear known hosts as i'm constantly recreating this cluster.
# This needs to be done on main server
# ~/.ssh/known_hosts
# for now we can just cat this file and use :
 ssh 35.185.195.179 "echo \"`cat ~/configs/id_rsa.pub`\" >> ~/.ssh/authorized_keys"

# this ip is not real but feel free to try it out 
#cat ~/configs/id_rsa.pub | ssh 35.185.195.179 "cat >> ~/.ssh/authorized_keys"

# Begin configuring ssh on systems

#1.  take host list as argument parameter
#2.  loop: scp file to host:dir


