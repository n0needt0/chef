#creates a sample node

nodedata = data_bag_item('help_nodes', 'sample.helppain.net')

node.default['ganglia']['cluster_name'] = nodedata['ganglia']['cluster_name']
node.default['ganglia']['override_hostname'] = nodedata['ganglia']['override_hostname']
node.default['network_interfaces'] = nodedata['network_interfaces']

include_recipe "help_nodes::base"
#++++++++++++++++++++++++++++++++++++++++++++++