# helgg73_infra

bastion_IP = 158.160.148.223
someinternalhost_IP = 10.131.0.12

Подключение к someinternalhost в одну команду:

`ssh -i ~/.ssh/id_ed25519 -J appuser@158.160.148.223 appuser@someinternalhost`

158.160.148.223 - публичный IP jump-сервера, id_ed25519 - имя ключа. Публичный ключ прописан в настройках виртуальной машины.

Можно создать алиас, для этого в файле ~/.ssh/config (если его нет - создать):
```
Host bastion
        HostName 158.160.148.223
        IdentityFile ~/.ssh/id_ed25519
        User appuser

Host someinternalhost
        HostName someinternalhost
        IdentityFile ~/.ssh/id_ed25519
        Port 22
        User appuser
        ProxyJump bastion
```

После этого можно подключаться командой `ssh someinternalhost`
