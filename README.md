## Notes

How to boot PostgreSQL:
```
$ docker run -itd --publish 5432:5432 --rm -e POSTGRES_PASSWORD=postgres -e POSTGRES_USER=postgres postgres
```
