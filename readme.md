Локально, на ПК, запускаем следующую команду

```bash
docker build . -t amorev/lesson-2010 && docker push amorev/lesson-2010
```

После чего идем на сервер и на сервере следующую

```bash
docker pull amorev/lesson-2010 && docker run -it -p 3000:3000 amorev/lesson-2010
```
