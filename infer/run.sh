sudo docker run \
	--name inferd \
	-p 50001:22 \
	-v ~/infer:/infer \
	-itd infer-docker

