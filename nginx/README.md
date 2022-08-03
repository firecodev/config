# nginx

**References**

* [Alphabetical index of directives](https://nginx.org/en/docs/dirindex.html)
* [How nginx processes a request](https://nginx.org/en/docs/http/request_processing.html)
* [Understanding the Nginx Configuration File Structure and Configuration Contexts  | DigitalOcean](https://www.digitalocean.com/community/tutorials/understanding-the-nginx-configuration-file-structure-and-configuration-contexts)
* [Mozilla SSL Configuration Generator](https://ssl-config.mozilla.org/)
* [How To Disable Weak CBC SSL Ciphers in Nginx ~ Bauer-Power Media](https://www.bauer-power.net/2019/12/how-to-disable-weak-cbc-ssl-ciphers-in.html)
* [What is SNI? How TLS server name indication works | Cloudflare](https://www.cloudflare.com/learning/ssl/what-is-sni/)
* [Errors from browsers with ssl_session_tickets off (nginx) - Server - Let's Encrypt Community Support](https://community.letsencrypt.org/t/errors-from-browsers-with-ssl-session-tickets-off-nginx/18124)
* [What is OCSP SSL Stapling? How Does it Work? - Explained](https://www.rapidsslonline.com/ssl/what-is-ocsp-ssl-stapling/)
* [Nginx SSL/TLS 配置优化](https://blog.lv5.moe/p/nginx-ssl-tls-configuration-optimization)


**Location Matching Precedence**

| Precedence | Modifier | Description | Example |
| - | - | - | - |
| 1 | = | Prefix string (match exact) | = / |
| 2 | ^~ | Prefix string (match longest) | ^~ /images/ |
| 3 | ~ | Regular expressions (case-sensitive matching) | ~ \\.php$ |
| 3 | ~* | Regular expressions (case-insensitive matching) | ~* \\.(gif\|jpg\|png)$ |
| 4 | _(none)_ | Prefix string (match longest) | /documents/ |

Note: The search of regular expressions terminates on the first match, and the corresponding configuration is used.

> Notice:
> 1. Locations of all types test only a URI part of request line without arguments.
> 2. The matching is performed against a normalized URI, after decoding the text encoded in the "%XX" form, resolving references to relative path components "." and "..", and possible compression of two or more adjacent slashes into a single slash.
> 3. Regular expressions matching does not need to escape the forward slash "/".


**Generate dhparam**

```
openssl dhparam -outform PEM -out dhparam.pem 2048
```
