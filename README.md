# Запуск Redmine

Скопировать Dockerfile (https://raw.githubusercontent.com/AlPervakov/Redmine/master/Dockerfile) и запустить:

```sh
$ docker build -t name:tag .
```
Запустить контейнер:
```sh
$ docker run -d -p 80:80 name:tag
```

# Docker-compose

![Структура файлов](https://raw.githubusercontent.com/AlPervakov/mytestRedmine/master/Code_V50yNG5x2s.png)

Redmine доступно на порту 8080
