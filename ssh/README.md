# SSH

## sshd - SSH server

**Security Policy**

* Only allow modern cryptography algorithms (e.g. Ed25519, ChaCha20-Poly1305, etc.) and NOT developed by NSA or NIST. (e.g. ECDSA, P-256, etc.)
* Disable root login.
* Disable authentication with password.


**Misc**

* Send client alive messages between some intervals. (Prevent disconnection when idle too long.)
* Disable sending banners and OS version message when connected.

