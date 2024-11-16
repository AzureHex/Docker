## Demo Account  
username - eyes  
password - Changeme

## docker networks

```sh
docker network create net
```

```sh
docker network create -d macvlan \
  --subnet=192.168.29.0/24 \
  --gateway=192.168.29.1 \
  -o parent=enp4s0 macvlan
```

```sh
docker exec -it syncthing sh
```

## nvidia container toolkit
```sh
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey \
    | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg
curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list \
    | sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' \
    | sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
sudo apt-get update
```

```sh
sudo apt-get install -y nvidia-container-toolkit
```

```sh
sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker
```

