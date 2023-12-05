# swap create

<!-- ref: https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-20-04 -->

## check swap

```sh
sudo swapon --show
free -h
```

## check disk space

```sh
df -h
```

## create swap file

```sh
sudo fallocate -l 4G /swapfile
ls -lh /swapfile
```

## enable swap file

```sh
sudo chmod 600 /swapfile
ls -lh /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
free -h
```

## make swap file permanent

```sh
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
```
