output "agent_queues_id" {
  description = "Map of id values across all agent_queues, keyed the same as var.agent_queues"
  value       = { for k, v in azuredevops_agent_queue.agent_queues : k => v.id }
}
output "agent_queues_agent_pool_id" {
  description = "Map of agent_pool_id values across all agent_queues, keyed the same as var.agent_queues"
  value       = { for k, v in azuredevops_agent_queue.agent_queues : k => v.agent_pool_id }
}
output "agent_queues_name" {
  description = "Map of name values across all agent_queues, keyed the same as var.agent_queues"
  value       = { for k, v in azuredevops_agent_queue.agent_queues : k => v.name }
}
output "agent_queues_project_id" {
  description = "Map of project_id values across all agent_queues, keyed the same as var.agent_queues"
  value       = { for k, v in azuredevops_agent_queue.agent_queues : k => v.project_id }
}

