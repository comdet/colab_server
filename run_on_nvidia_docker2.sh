docker run --name colab-local-teacher --runtime=nvidia -it -p 1000:8888 -p 2000:5000 -e TF_FORCE_GPU_ALLOW_GROWTH='true' --cap-add SYS_ADMIN --device /dev/fuse --security-opt apparmor=unconfined colab-local-py3 &
docker run --name colab-local-1 --runtime=nvidia -it -p 1001:8888 -p 2001:5000 -e TF_FORCE_GPU_ALLOW_GROWTH='true' --cap-add SYS_ADMIN --device /dev/fuse --security-opt apparmor=unconfined colab-local-py3 &
docker run --name colab-local-2 --runtime=nvidia -it -p 1002:8888 -p 2002:5000 -e TF_FORCE_GPU_ALLOW_GROWTH='true' --cap-add SYS_ADMIN --device /dev/fuse --security-opt apparmor=unconfined colab-local-py3 &
docker run --name colab-local-3 --runtime=nvidia -it -p 1003:8888 -p 2003:5000 -e TF_FORCE_GPU_ALLOW_GROWTH='true' --cap-add SYS_ADMIN --device /dev/fuse --security-opt apparmor=unconfined colab-local-py3 &
docker run --name colab-local-4 --runtime=nvidia -it -p 1004:8888 -p 2004:5000 -e TF_FORCE_GPU_ALLOW_GROWTH='true' --cap-add SYS_ADMIN --device /dev/fuse --security-opt apparmor=unconfined colab-local-py3 &
docker run --name colab-local-5 --runtime=nvidia -it -p 1005:8888 --cap-add SYS_ADMIN --device /dev/fuse --security-opt apparmor=unconfined colab-local-py3 &
docker run --name colab-local-6 --runtime=nvidia -it -p 1006:8888 --cap-add SYS_ADMIN --device /dev/fuse --security-opt apparmor=unconfined colab-local-py3 &
docker run --name colab-local-7 --runtime=nvidia -it -p 1007:8888 --cap-add SYS_ADMIN --device /dev/fuse --security-opt apparmor=unconfined colab-local-py3 &
docker run --name colab-local-8 --runtime=nvidia -it -p 1008:8888 --cap-add SYS_ADMIN --device /dev/fuse --security-opt apparmor=unconfined colab-local-py3 &
docker run --name colab-local-9 --runtime=nvidia -it -p 1009:8888 --cap-add SYS_ADMIN --device /dev/fuse --security-opt apparmor=unconfined colab-local-py3 &
docker run --name colab-local-10 --runtime=nvidia -it -p 1010:8888 --cap-add SYS_ADMIN --device /dev/fuse --security-opt apparmor=unconfined colab-local-py3 &
