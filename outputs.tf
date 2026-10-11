output "agent_queues_id" {
  description = "Map of id values across all agent_queues, keyed the same as var.agent_queues except keys with no id are omitted"
  value       = { for k, v in azuredevops_agent_queue.agent_queues : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_queues_agent_pool_id" {
  description = "Map of agent_pool_id values across all agent_queues, keyed the same as var.agent_queues except keys with no agent_pool_id are omitted"
  value       = { for k, v in azuredevops_agent_queue.agent_queues : k => v.agent_pool_id if v.agent_pool_id != null }
}
output "agent_queues_name" {
  description = "Map of name values across all agent_queues, keyed the same as var.agent_queues except keys with no name are omitted"
  value       = { for k, v in azuredevops_agent_queue.agent_queues : k => v.name if v.name != null && length(v.name) > 0 }
}
output "agent_queues_project_id" {
  description = "Map of project_id values across all agent_queues, keyed the same as var.agent_queues except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_agent_queue.agent_queues : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

