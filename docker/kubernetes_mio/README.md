
git clone conductor
./build_and_publish_docker_images.sh
kubectl create configmap dynomite-startup --from-file=./startup.sh
kubectl create configmap conductor-config --from-file=./config.properties

kubectl create -f conductor.yaml
