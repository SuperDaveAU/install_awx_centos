yum update
yum install -y git tree screen wget net-tools vim yum-utils device-mapper-persistent-data lvm2
cd /root
git clone https://github.com/ansible/awx.git
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce -y 
systemctl start docker
systemctl enable docker
yum-config-manager --enable extras
yum install ansible docker-python -y 
cd /root/awx/installer/
ansible-playbook -i inventory install.yml


