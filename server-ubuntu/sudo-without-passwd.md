# sudo without password

```sh
sudo visudo
```

or 

```sh
sudo vim /etc/sudoers
```

add this line to end of file

```sh
YOUR_USERNAME_HERE ALL=(ALL) NOPASSWD: ALL
```