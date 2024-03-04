# Condiment Container
A Web-application built on a modern agile stack, enabling users to discover what condiments they should put on their lunch.

## How to deploy
The Nginx server is set up to load balance between two flask containers on a 172.20.0.0/24 subnet. Fortunately for you, I've built a really complex shell script that deploys this web titan onto your local computer! "How?!", I hear you yell? Well just run the below command in the root folder:

```
sh script.sh
```

## FAQ
### Why?
I wanted to learn about NGINX.

### Will this shutdown all my containers locally?
Yes.

### What browsers are supported?
I genuinely have no idea.
