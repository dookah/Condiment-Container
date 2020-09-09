# Condiment Container
A sample use of NGINX, load balancing between two flask servers.

## How to deploy
The Nginx server is set up to load balance between two flask containers on a 172.20.0.0/24 subnet, fortunately i've built a really complex shell script that deploys this web titan onto your local computer! How I hear you yell in the streets? Well just run the below command in the root folder:

```
sh script.sh
```

## FAQ
Q: Why?
A: I wanted to learn about NGINX to be honest.

Q: Will this shutdown all my containers locally?
A: I'm glad you asked! Yes.

Q: How do I run this on Windows?
A: https://www.apple.com/uk/shop/buy-mac/macbook-pro/13-inch
