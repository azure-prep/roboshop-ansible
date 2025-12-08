default:
	ansible-playbook -i  ${app_name}-dev.azdevopsb1.online, -e app_name=${app_name} -e ansible_user=azuser -e ansible_password=Devops@12345 -e token=${token} roboshop.yml

all:
	make app_name=mongodb token=
	make app_name=redis
	make app_name=rabbitmq
	make app_name=mysql
	make app_name=catalogue
	make app_name=user
	make app_name=cart
	make app_name=shipping
	make app_name=payment
	make app_name=frontend
