
variable "vm_size" {
  type = list(string)
  description = "Tamaño de la máquina virtual"
  default = ["Standard_B2ms", "Standard_B1ms", "Standard_B1ms"] # 2 CPU ; 8GB | 1 CPU ; 2 GB
}

variable "nodes" {
  type = list(string)
  description = "Máquinas virtuales necesarias para la práctica : Master , Worker01 y Worker 02"
  default = ["master-azure", "worker01-azure", "worker02-azure"]
}
