require 'chef/provisioning/vsphere_driver'

with_vsphere_driver host: node[:prueba][:vsphere][:host],
  insecure: node[:prueba][:vsphere][:insecure],
  user:     node[:prueba][:vsphere][:user],
  password: node[:prueba][:vsphere][:password]

with_machine_options :bootstrap_options => {
  num_cpus: 2,
  memory_mb: 4096,
  datacenter: node[:prueba][:vsphere][:datacenter],
  datastore: node[:prueba][:vsphere][:datastore],
  network_name: node[:prueba][:vsphere][:network_name],
  resource_pool: node[:prueba][:vsphere][:resource_pool],
  template_folder: node[:prueba][:vsphere][:template_folder],
  template_name: node[:prueba][:vsphere][:template_name],
  vm_folder: node[:prueba][:vsphere][:vm_folder],
  customization_spec: node[:prueba][:vsphere][:cspec],
  ssh: {
    user: node[:prueba][:vsphere][:ssh][:user],
    password: node[:prueba][:vsphere][:ssh][:password],
    paranoid: node[:prueba][:vsphere][:ssh][:paranoid]
  }
},
sudo: node[:prueba][:sudo]
