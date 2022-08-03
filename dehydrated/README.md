# dehydrated

**Dependencies**

dehydrated

```
openssl
```

cfhookbash

```
jq
```


**References**

* [dehydrated-io/dehydrated: letsencrypt/acme client implemented as a shell-script – just add water](https://github.com/dehydrated-io/dehydrated)
* [sineverba/cfhookbash: Cloudflare hook bash for dehydrated - DNS-01 Challenge Let's Encrypt](https://github.com/sineverba/cfhookbash)
* [sebastiansterk/dns-01-manual: A manual implementation for DNS-01 challenge hook used in dehydrated](https://github.com/sebastiansterk/dns-01-manual)


**Cron Example**

Run at 00:00 on day-of-month 1.

```
0 0 1 * * date +"[%Y/%m/%d %H:%M:%S] Starting dehydrated..." >> /path/to/dehydrated.log 2>&1
0 0 1 * * /path/to/dehydrated/dehydrated --cron >> /path/to/dehydrated.log 2>&1
# The web server reload command can also be invoked in hook.
0 30 1 * * systemctl reload nginx
```


**Notice**

* The challenge in this config is set to `dns-01` with `cfhookbash` hook.
* The CA is set to `zerossl`.