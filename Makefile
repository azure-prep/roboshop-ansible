default:
	ansible-playbook -i ${app_name}-dev.azdevopsb1.online, -e app_name=${app_name} -e ansible_user=azuser -e ansible_password=Devops@12345 roboshop.yml

all:
	make app_name=mongodb
	make app_name=redis
	make app_name=rabbitmq
	make app_name=mysql
	ansible-playbook -i ${app_name}-dev.azdevopsb1.online, -e app_name=${app_name} -e ansible_user=azuser -e ansible_password=Devops@123456 roboshop.yml
	make app_name=user
	make app_name=cart
	make app_name=shipping
	make app_name=payment
	make app_name=frontend
