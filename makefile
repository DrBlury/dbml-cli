IMAGE_NAME=dbml-cli
PUBLIC_IMAGE_NAME=gitea.linuxcode.net/linuxcode/dbml-cli

build:
	docker build -t $(IMAGE_NAME) .

generate-postgres: build
	mkdir -p out
	docker run -it --rm -v $(PWD)/docs/db:/app $(IMAGE_NAME) dbml2sql schema.dbml --postgres > out/schema.sql
