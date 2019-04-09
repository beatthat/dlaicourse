run-notebook:
	docker run \
			--rm \
			--runtime nvidia \
			-p 8888:8888 \
			-e KERAS_BACKEND=tensorflow \
			-v $(shell pwd):/notebook \
			--workdir /notebook \
			--name dlai \
		jupyter/tensorflow-notebook