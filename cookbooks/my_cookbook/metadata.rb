name             'my_cookbook'
maintainer       'Thoughtster'
maintainer_email 'thoughtster@thoughtster.com'
license          'Apache 2.0'
description      'Installs/Configures my_cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "chef-client"
depends "ntp"
