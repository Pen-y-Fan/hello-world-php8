# Hello World PHP8 Demo

This simple demo of PHP8 only code. The constructor has been created using the new PHP8 constructor format, the test
uses PHP8 named arguments. This code will therefore not run on PHP7.

## Installation

The demo uses:

- [PHP 8.0+](https://www.php.net/downloads.php)
- [Composer](https://getcomposer.org)

Recommended:

- [Git](https://git-scm.com/downloads)

Clone the repository

```sh
git clone https://github.com/Pen-Y-Fan/hello-world-php8.git
```

Install all the dependencies using composer

```sh
cd hello-world-php8
composer install
```

Run all the tests

```shell script
composer test
```

## Dependencies

The kata uses composer to install:

- [PHPUnit](https://phpunit.de/)

## Folders

- `src` - contains the HelloWorld class, only compatible with PHP8+.
- `tests` - contains the corresponding tests, only compatible with PHP8+.

## Testing

PHPUnit has been configured to run tests. PHPUnit can be run using a composer script. To run the unit tests, from the
root of the PHP code run:

```shell script
composer test
```

A Windows batch file has been created, like to an alias on Linux/Mac (e.g. `alias pu="composer test"`), the same
PHPUnit `composer test` can be run:

```shell script
pu
```

## Docker

For convenience a Dockerfile, docker-composer.yml and Make file have been created. To run the above commands:

```sh
make composer-install
make test
```

To demonstrate this demo will not run on PHP7, the following command can be run:

```sh
docker run -u $(id -u):$(id -g) -v $(pwd):/app -w /app -it --rm \
  php:7.4-cli-alpine3.12 ./vendor/bin/phpunit
```

An error like:

```text
Fatal error: Uncaught ParseError: syntax error, unexpected ':', expecting ')' in /app/tests/HelloWorldTest.php:14
```

Or:

```text
Fatal error: Composer detected issues in your platform: Your Composer dependencies require a PHP version ">= 8.0.0". You are running 7.4.14. in /app/vendor/composer/platform_check.php on line 24
```
