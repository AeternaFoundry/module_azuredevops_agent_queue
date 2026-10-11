resource "azuredevops_agent_queue" "agent_queues" {
  for_each = var.agent_queues

  project_id    = each.value.project_id
  agent_pool_id = each.value.agent_pool_id
  name          = each.value.name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}

