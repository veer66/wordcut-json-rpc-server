# wordcut-json-rpc-server

## How to run

```
docker run -d --name wordcut --net=host veer66/wordcut-json-rpc-server 
```

## How to build and push

```
docker build -t veer66/wordcut-json-rpc-server .
docker push veer66/wordcut-json-rpc-server
```

## PHP Client Example

```php
<?php
require __DIR__ . '/vendor/autoload.php';
use JsonRPC\Client;
$client = new Client("http://localhost:8999");
var_dump($client->execute("put_delimiters", ["กากากา", "|"]));
?>

// FROM php:8
// WORKDIR /work
// RUN apt-get update && apt-get install -y git
// RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
// RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
// RUN php composer-setup.php
// RUN php -r "unlink('composer-setup.php');"
// RUN php composer.phar require "fguillot/json-rpc" 1.2.5
// COPY wordcut_client_example.php /work/wordcut_client_example.php
// ENTRYPOINT ["php", "wordcut_client_example.php"]
```
