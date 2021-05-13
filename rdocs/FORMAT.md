# Formatar disco (tudo a zero)

```bash
dd if=/dev/urandom of=/dev/sd(x) status=progress bs=2M && sync
dd if=/dev/zero of=/dev/sd(x) status=progress bs=2M && sync
```
