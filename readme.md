This Docker image provides a convenient and easy way to work with DBML (Database Markup Language) files in your projects without the need to install the DBML CLI (Command Line Interface) using npm. The image contains the latest version of the DBML CLI, which can be used to convert DBML files to SQL scripts or to reverse-engineer SQL scripts to DBML files.

To use the image, you will first need to have Docker installed on your system. Once you have Docker set up, you can pull the image from the Docker Hub by running the following command:

```docker pull gitea.linuxcode.net/linuxcode/dbml-cli```

Once the image is pulled, you can use the DBML CLI dbml2sql by running the following command:

```docker run --rm -v $(PWD):/app $(IMAGE_NAME) dbml2sql schema.dbml --postgres > schema.sql```

Alternatively you can generate your dbml from sql by running the following command:

```docker run --rm -v $(PWD):/app $(IMAGE_NAME) sql2dbml schema.sql > schema.dbml```

The above command will mount your current working directory to the /app directory inside the container, and then run the DBML CLI command you specified.

By using this image, you can easily integrate DBML into your workflow, regardless of your development environment. This makes it easy to share DBML files with your team, and to work with them on different systems.

Maybe consider taking a look at the provided makefile for an example.

Please note: This image is based on the latest version of DBML CLI, the commands and usage might change over time. Always check the documentation of the package for the most up-to-date information.