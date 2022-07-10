# BOOTSTRAP CSS + NGINX + DOCKER

Simple Nginx server docker container running a static Bootstrap template - [`startboostrap-heroic-features`](https://github.com/BlackrockDigital/startbootstrap-heroic-features)

## How to run

You will need podman on your machine.

Install Podman using Home-brew

Install podman with the following command: brew install podman
Create a machine in qemu (installed by home-brew) with the following command: podman machine init
Start the machine so it can be used, with the following command: podman machine start
Symlink docker for podman ln -s podman docker  (in /usr/local/bin e.g. cd /usr/local/bin; ln -s podman docker), so it's a true drop in replacement. Alternatively you may want to alias docker to podman alias docker=podman
Try running docker run hello-world to test or doing a docker pull <fully-qualified-image-name>
You might also want to look at https://podman.io/getting-started/installation#macos & https://www.redhat.com/sysadmin/podman-mac-machine-architecture & https://www.redhat.com/sysadmin/replace-docker-podman-mac-revisited


```bash
# Build Image
docker build -t bootstrap-nginx .

# Run container
docker run -d -p 80:80 bootstrap-nginx 

# Confirm container is running
docker container ls
```
