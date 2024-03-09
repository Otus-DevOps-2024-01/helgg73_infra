Сборка образов VM для Yandex Cloud при помощи Packer

1) Конфигурация базового образа reddit: ubuntu16.json перемнные окружения по образцу variables.json.examples Переменнные "ya_token" и "service_account_key_file" приведены для образца, авторизаци или по токену или по сервисному аккаунту. Скрипты установки mongodb и ruby в папке scripts.
Проверка конфигурации:
packer validate -var-file=variables.json ./ubuntu16.json
Запуск:
packer build -var-file=variables.json ./ubuntu16.json

2) Конфигурация образа с установленным reddit: