# Azure Setup and Ansible Deployment

## Step 1: Azure Login

Begin by logging into your Azure account using the following command:

```bash
az login
```

## Step 2: SSH Key Generation

Before proceeding, generate an SSH key for secure access to your Ansible VM. Run the following command:

```bash
ssh-keygen -t rsa -b 4096
```

Follow the prompts to save the key to the default location (usually `C:\Users\arman\.ssh\id_rsa`) and optionally add a passphrase for added security.

## Step 3: Terraform Initialization and Deployment

Next, navigate to your Terraform project directory and run the following commands to initialize and apply your Terraform configuration:

```bash
tf init        # Initialize Terraform
tf validate    # Validate the configuration files
tf plan        # Create an execution plan
tf apply -auto-approve  # Apply the changes automatically
```

## Step 4: SSH into the Ansible Machine

Once your infrastructure is set up, you can SSH into your Ansible VM using:

```bash
ssh -i C:\Users\arman\.ssh\id_rsa adminuser@52.226.166.251
```

Make sure to check the output from Terraform to confirm the IP address, and update your inventory file accordingly to match the Ansible VM's IP.

## Step 5: Copying Files to the Ansible VM

To prepare your Ansible environment, you'll need to copy your SSH key and playbooks to the Ansible VM. Use the following commands:

### Copy Ansible Playbooks

Transfer your Ansible playbooks with the following command:

```bash
scp -i C:\Users\arman\.ssh\id_rsa -r C:\Users\arman\OneDrive\Desktop\Ansible/* adminuser@52.226.166.251:~/ansible
```

### Copy SSH Key

To copy your SSH key, run:

```bash
scp -i C:\Users\arman\.ssh\id_rsa -r C:\Users\arman\.ssh/* adminuser@52.226.166.251:~/ansible
```

## Step 6: Running the Ansible Playbook

After copying the necessary files, SSH back into your Ansible VM:

```bash
ssh -i C:\Users\arman\.ssh\id_rsa adminuser@52.226.166.251
```

Navigate to the Ansible directory:

```bash
cd ansible
```

Now you can execute your playbook with:

```bash
ansible-playbook -i inventory playbook.yml
```

## Step 7: Exiting the Ansible VM

Once your playbook has finished executing, you can exit the Ansible VM by typing:

```bash
exit
```

## Step 8: Cleaning Up Terraform Resources

Finally, if you no longer need the resources created by Terraform, you can destroy them using:

```bash
tf destroy -auto-approve
```

This command will remove all resources managed by your Terraform configuration.
