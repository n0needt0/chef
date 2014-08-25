name             'help_nodes'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures help_nodes'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "help_base"
depends "help_monitoring"
depends "hostsfile"
depends "network_interfaces"


