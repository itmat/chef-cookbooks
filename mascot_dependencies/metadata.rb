maintainer       "ITMAT UPENN"
maintainer_email "itmat.apps@itmat.upenn.edu"
license          "Apache 2.0"
description      "Installs Perl CPAN modules to support Mascot Server"
version          "0.1"

%w{ centos redhat suse fedora ubuntu debian }.each do |os|
  supports os
end

depends "perl"