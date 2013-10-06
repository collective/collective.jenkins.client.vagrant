# If we reconfigure stuff it goes here

class reconfigures {

    exec { 'dpkg-reconfigure locales':
        command => 'dpkg-reconfigure locales',
    }

}

include reconfigures
