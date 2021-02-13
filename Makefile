# Usage:

# Check your user ID and update UID, if different

# make composer-install - executes the php-cli container and runs composer install
# make tests - executes the php-cli container and runs the phpunit tests
# make shell - opens a shell terminal in the php-cli container as a standard user
# make shell-root - opens a shell terminal in the php-cli container as root user
# make chown - opens a shell in php-cli container, as root user and resets the ownership of all folders to the UID

# To check your user ID run: echo $(id -u)
UID = 1000

composer-install:
	docker-compose run -u ${UID}:${UID} php-cli composer install
test:
	docker-compose run -u ${UID}:${UID} php-cli ./vendor/bin/phpunit
shell:
	docker-compose run -u ${UID}:${UID} php-cli /bin/sh
shell-root:
	docker-compose run php-cli /bin/sh
chown:
	docker-compose run php-cli chown -R ${UID}:${UID} ./
