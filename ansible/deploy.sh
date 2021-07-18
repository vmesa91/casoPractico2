echo "Deploy Kubernetes with Ansible..."

echo "1. Configure requirements necessary in the servers..."
ansible-playbook -i hosts config-init.yaml

echo "2. Install NFS in the server"
ansible-playbook -i hosts -l masters install-nfs.yaml 

echo "3. Commons Tasks to do in all nodes"
ansible-playbook -i hosts commons-tasks.yaml

echo "4. Configure Master Node & Install Ingress Controller"
ansible-playbook -i hosts -l masters configuration-master.yaml

echo "5. Configure Workers Node"
ansible-playbook -i hosts -l masters configuration-worker.yaml

echo "6. Pending.....DEPLOY APP"
