default:
	ansible-playbook -i ${app_name}-dev.azdevopsb1.online, -e app_name=${app_name} -e ansible_user=azuser -e ansible_password=Devops@12345 roboshop.yml