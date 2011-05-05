# Chef recipe to install mod_xsendfile to Ubuntu i386.
remote_file "/tmp/mod_xsendfile.c" do
  source "mod_xsendfile.c"
end

bash "compile_xsendfile" do 
  user "root"
  cwd "/tmp"
  code "apxs -cia mod_xsendfile.c"
end

apache_module "xsendfile" do
  conf true
end
