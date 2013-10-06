# Install python

class python2.6 {

    # Add ppa deadsnakes
    exec { "/usr/bin/apt-add-repository ppa:fkrull/deadsnakes && /usr/bin/apt-get update":
        alias   => "ppa_deadsnakes",
        require => Package["python-software-properties"],
        creates => "/etc/apt/sources.list.d/deadsnakes.list"
    }

    # Install python2.6
    package {"python2.6":
        ensure => present,
    }

    # Install python2.6-dev
    package {"python2.6-dev":
        ensure => present,
    }
}

class python2.7 {

    # Install python2.7 and all what we need
    package {"python2.7":
        ensure => present,
    }

    package {"python27-dev":
        ensure => present,
    }

    # python-imaging
    package {"python-imaging":
        ensure => present,
    }

    # python-lxml
    package {"python-lxml":
        ensure => present,
    }

    # enscript
    package {"enscript":
        ensure => present,
    }

    # Todo: Install setuptools
    # sudo('wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O - | python2.7')

}

include python2.6
include python2.7
