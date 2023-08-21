Adding-k3s-to-PATH.md

## Adding k3s to PATH

```
[c7-k3s:root:~] # k3s kubectl get nodes
-bash: k3s: command not found
```

After a [little stackexchange research](https://unix.stackexchange.com/questions/26047/how-to-correctly-add-a-path-to-path) 

```
[c7-k3s:root:~] # /usr/local/bin/k3s kubectl get nodes
NAME     STATUS   ROLES                  AGE     VERSION
c7-k3s   Ready    control-plane,master   3m36s   v1.25.9+k3s1
```

```
[c7-k3s:root:~] # echo $PATH
/usr/local/sbin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin
[c7-k3s:root:~] # PATH=$PATH:/usr/local/bin
[c7-k3s:root:~] # k3s kubectl get nodes
NAME     STATUS   ROLES                  AGE     VERSION
c7-k3s   Ready    control-plane,master   5m58s   v1.25.9+k3s1
```