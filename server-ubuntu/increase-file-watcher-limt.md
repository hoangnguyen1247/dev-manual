# File watcher


## Check current limit

```sh
cat /proc/sys/fs/inotify/max_user_watches
cat /proc/sys/fs/inotify/max_user_instances
cat /proc/sys/fs/inotify/max_queued_events
```

## Update limit

```sh
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
```

```sh
echo fs.inotify.max_user_instances=256 | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
```

```sh
echo fs.inotify.max_queued_events=16384 | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
```
