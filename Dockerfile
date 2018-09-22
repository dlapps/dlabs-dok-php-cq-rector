FROM dreamlabs/php-composer:latest

RUN composer global require rector/rector-prefixed:@dev && \
    ln -s /root/.composer/vendor/bin/rector /usr/bin/rector;

ENTRYPOINT ["rector"]
CMD ["process", "/app/src", "/app/config", "--autoload-file", "/app/vendor/autoload.php"]