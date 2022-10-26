data "packetfabric_cloud_router_connections" "all_crc" {
  provider   = packetfabric
  circuit_id = packetfabric_cloud_router.cr.id
}
output "packetfabric_cloud_router_connections" {
  value = data.packetfabric_cloud_router_connections.all_crc
}