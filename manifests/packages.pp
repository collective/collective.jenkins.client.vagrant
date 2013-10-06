# Packages we need

class packages {

    # Basics
    package {"build-essential":
        ensure => present,
    }

    # Basics
    package {"htop":
        ensure => present",
    }

    # Time sync
    package {"ntp":
        ensure => present,
    }

    # Keep /tmp clean
    package {"tmpreaper":
        ensure => present,
    }

    # for add-apt-repository
    package {"python-software-properties":
        ensure => present,
    }

    # VCS
    package {"git-core":
        ensure => present,
    }

    # VCS
    package {"subversion":
        ensure => present,
    }

    # VCS
    package {"libxml2-utils":
        ensure => present,
    }

    # Word support
    package {"wv":
        ensure => present,
    }

    # PDF support
    package {"poppler-utils":
        ensure => present,
    }

    # bz2 support to extract pypi packages
    package {"libbz2-dev":
        ensure => present,
    }

    # Code analysis
    package {"ohcount":
        ensure => present,
    }

    # Code analysis
    package {"sloccount":
        ensure => present,
    }

    # Code analysis
    package {"nodejs":
        ensure => present,
    }

    # Code analysis
    package {"npm":
        ensure => present,
    }

    # Code analysis
    exec {"npm install -g jslint":
        command => "npm install -g jslint",
        require   => Package['npm'],
    }

    # Code analysis
    exec {"npm install -g jshint":
        command => "npm install -g jshint",
        require   => Package['npm'],
    }

    # Code analysis
    exec {"npm install -g csslint",
        command => "npm install -g csslint",
        require   => Package['npm'],
    }

    # Robot Framework (This dependency is only necessary when
    # 'Library  Dialogs' are added to the robot setup, which shouldn't happen)
    package {"python-tk:
        ensure => present,
    }

    # Java is needed to connect the Jenkins slaves
    package {"openjdk-7-jre":
        ensure => present,
    }

    # LXML
    package {"libxslt1-dev":
        ensure => present,
    }

    # LXML
    package {"libxml2-dev":
        ensure => present,
    }

include packages
