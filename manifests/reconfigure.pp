# If we reconfigure stuff it goes here

class reconfigure {

    # LOCALE
    exec { 'dpkg-reconfigure locales':
        command => 'dpkg-reconfigure locales',
    }

}

include reconfigure
