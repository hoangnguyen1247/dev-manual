# sudo without password

## Change editor to vim

```sh
sudo update-alternatives --config editor
```

choose desired editor and save

## Add config

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
