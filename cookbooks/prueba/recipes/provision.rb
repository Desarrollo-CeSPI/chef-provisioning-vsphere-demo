include_recipe "prueba::_vsphere"

machine "test-car-chef-provision" do
  tag 'prueba'
  run_list ['prueba']
end
