

include_recipe "python"


node['docker']['compose']['pip_packages'].each do |name, version|

  python_pip name do
    provider Chef::Provider::PythonPip
    version version
    action :install
  end

end
