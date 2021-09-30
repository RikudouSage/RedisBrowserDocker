This is a dockerized version of [redis-browser](https://github.com/humante/redis-browser).

Supported Environment variables:

- `REDIS_HOST` - **mandatory** - the hostname/IP address of the Redis server
- `REDIS_PORT` - the redis port, defaults to 6379
- `REDIS_DB` - the redis database number, defaults to 0
- `REDIS_PASSWORD` - the password to access redis, by default isn't used

The app runs on port `4567`.

Example:

`docker run --rm -p 8000:4567 -e REDIS_HOST=192.168.0.1 -e REDIS_PORT=1234 -e REDIS_DB=1 -e REDIS_PASSWORD=test rikudousage/redis-browser`

This will make the app accessible on port 8000 on the host system, will connect to redis server at 192.168.0.1 on port
1234 and use the database with number 1, supplying the password "test".
