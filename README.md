# Webpack image

## Usage

### docker-compose

```yaml
version: '3'

services:
  webpack:
    image: 'bjouhaud/webpack'
    hostname: 'webpack'
    ports:
      - '8080:8080'
    volumes:
      - '.:/app:rw'
      - '~/.npm:/home/node/.npm:rw'
```
