maintainer       "ITMAT UPENN"
maintainer_email "itmat.apps@itmat.upenn.edu"
license          "Apache 2.0"
description      "Installs dependencies for a Mascot Server"
version          "0.1"

%w{ centos redhat suse fedora ubuntu debian }.each do |os|
  supports os
end
depends "perl"
depends "gd2"
depends "htdig"