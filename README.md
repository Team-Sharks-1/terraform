Az login 

# terraform

tf init 
tf validate 
tf plan
tf apply -auto-approve


ssh into the ansible machine
" ssh -i C:\Users\arman\.ssh\id_rsa adminuser@20.169.235.141 "

# for ansible 

make sure to check the output for ip address 
change inventory file to match 

copy ssh key and ansible playbooks to the ansible vm

playbook : 
"scp -i C:\Users\arman\.ssh\id_rsa -r C:\Users\arman\OneDrive\Desktop\Ansible/* adminuser@20.169.235.141:ansible"

for ssh key 
"scp -i C:\Users\arman\.ssh\id_rsa -r C:\Users\arman\.ssh\* adminuser@20.169.235.141:ansible"

ssh back in ansible v machine 

cd ansible
" ansible-playbook -i inventory playbook.yml "
