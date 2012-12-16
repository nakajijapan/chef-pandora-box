case node['platform']
when "ubuntu","debian"
  default['emacs']['packages'] = ["emacs23-nox"]
when "redhat","centos","scientific","fedora"
  default['emacs']['packages'] = ["emacs-nox"]
when "freebsd"
  default['emacs']['packages'] = ["editors/emacs-nox11"]
else
  default['emacs']['packages'] = ["emacs"]  
end
