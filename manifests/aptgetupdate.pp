class aptgetupdate {

# This apt-get update below is meant to ward
# off "Unable to fetch some archives, maybe run apt-get update or try with --fix-missing?"
# errors.
    # Update
    exec { 'apt-get update':
        command => '/usr/bin/apt-get update',
    }

    # Dist-Upgrade
    exec { 'apt-get dist-upgrade':
        command => '/usr/bin/apt-get dist-upgrade',
    }

    # Autoremove
    exec { 'apt-get atoremove':
        command => '/usr/bin/apt-get autoremove',
    }


}

include aptgetupdate
