# traefik-challenge

Challenge is from https://traefik.io/careers/platform-engineer/
It says:
```
docker run -it traefik/jobs
```

## Steps

### 1: run the command
It spits out:
> Helmsman, where are you? 🤔

And with `-h` added:
```
Usage of /start:
  -debug string
        debug
  -local string
        local
```
But nothing more from adding those params yet.

I guess this runs differently when deployed in a K8S cluster, mostly from the product being a K8S proxy, but also the message.

### 2: run the container in k8s
Running it as a deployment in `kind` spits out:
> It seems I do need more permissions... May I be promoted cluster-admin? 🙏
Hmmmm, it seems Helmsman deployment has an issue 😒

And the with `cluster-admin` role:
> Look at me by the 8888 ingress 🚪

But then pod crashes right after.
The image is 4 years old, so perhaps it is a compatibility issue, I try to run it with and older version.

After downgrading adn adding an ingress:

```
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
<center>
I have to tell you something...</br>
Something that nobody should know.</br>
However, everyone could see it.</br>
It's even part of my public image.</br>
Come back when you know more.</br>
But remember, it's a secret 🤫</br>
</center>
</body>
</html>
```

