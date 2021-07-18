echo "Deploy Kubernetes with Ansible..."

echo "1. Configure requirements necessary in the servers..."
ansible-playbook -i hosts config-init.yaml

echo "2. Install NFS in the server"
ansible-playbook -i hosts -l masters install-nfs.yaml 
