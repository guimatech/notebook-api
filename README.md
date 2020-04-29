[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/guimaraes-lucas/notebook-api)
[![Build Status](https://travis-ci.com/guimaraes-lucas/notebook-api.svg?branch=master)](https://travis-ci.com/guimaraes-lucas/notebook-api)

# O que é esse projeto?

Uma api de bloco de notas feita com [Rails](https://rubyonrails.org).

# Instalação e execução

Existem duas maneiras de execução a primeira é utilizando o [Docker](https://docs.docker.com/docker-for-windows/install/), com o mesmo executando na maquina, utilize o seguinte comando:

```shell
docker build -t notebook-api .
docker run -it -p 3000:3000 --name notebook-api notebook-api
```

# Endpoints

Para testes da API é necessário que uma aplicação cliente que faça requisições aos *endpoints* da ferramenta ou mesmo uma aplicação como o [Postman](https://www.getpostman.com/downloads/) (uma ferramenta que tem como objetivo testar serviços RESTful (Web APIs) por meio do envio de requisições HTTP e da análise do seu retorno.). 
