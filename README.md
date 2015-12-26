# Webmin
A collection of scripts, configurations and the like for Webmin

## SSL Certificate renewals

`wget https://raw.githubusercontent.com/KeiroD/Webmin/master/renew.sh` and plop it anywhere in your server. Probably `/root` would be best, given that if you're going to do SSL certificate renewals with `letsencrypt` for easy set-up.

### Miniserv.conf

`miniserv.conf` is Webmin's self-contained `apache2` web-server. It is located in `/etc/webmin`. Don't bother trying to get `Webmin` to not touch the comments. It will just remove whatever comments you've placed.

```
keyfile=/etc/letsencrypt/live/example.herpaderp.com/privkey.pem
certfile=/etc/letsencrypt/live/example.herpaderp.com/fullchain.pem
ssl=1
ssl_redirect=1
#ssl_version=10
Header always set Strict-Transport-Security "max-age=63072000; includeSubdomains; preload"
no_tls1_1=0
no_ssl2=1
extracas=
no_ssl3=1
no_sslcompression=1
no_tls1_2=
ssl_honorcipherorder=0
no_tls1=1
ssl_cipher_list=EECDH+AES:EDH+AES:-SHA1:EECDH+RC4:EDH+RC4:RC4-SHA:EECDH+AES256:EDH+AES256:AES256-SHA:!aNULL:!eNULL:!EXP:!LOW:!MD5
```
