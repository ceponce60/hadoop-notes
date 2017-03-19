# This is to configure our idle system with access to our nodes
#
#
#
#
#
#
#

# .bash_profile of idle made to simply provide support to cluster building.

alias clear_known_hosts='echo '' > ~/.ssh/known_hosts'

alias build_ssh='eval `ssh-agent`; ssh-add ~/.ssh/id_rsa'
