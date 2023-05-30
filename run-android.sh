SERVER_URL="http://192.168.31.80:4000" # 这个修改成自己的atxserver2地址
IMAGE="atxserver2-android-provider:latest"
#docker pull $IMAGE
docker run --rm --privileged -v /dev/bus/usb:/dev/bus/usb --net host \
    ${IMAGE} python main.py --server ${SERVER_URL} 