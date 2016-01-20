include_recipe "prueba::_vsphere"

machine_batch do
    machines search(:node, '*:*').map { |n| n.name }
    action :destroy
end
