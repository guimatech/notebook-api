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

<table id="route_table" class="route_table">
  <thead>
    <tr>
      <th>Helper</th>
      <th>HTTP Verb</th>
      <th>Path</th>
      <th>Controller#Action</th>
    </tr>
    <tr class="bottom">
      <th>
        <a data-route-helper="_path" title="Returns a relative path (without the http or domain)" href="#">Path</a> /
        <a data-route-helper="_url" title="Returns an absolute URL (with the http and domain)" href="#">Url</a>
      </th>
      <th>
      </th>
      <th>
        <input id="search" placeholder="Path Match" type="search" name="path[]">
      </th>
      <th>
      </th>
    </tr>
  </thead>
  <tbody class="exact_matches" id="exact_matches">
  </tbody>
  <tbody class="fuzzy_matches" id="fuzzy_matches">
  </tbody>
  <tbody>
    <tr class="route_row" data-helper="path">
  <td data-route-name="contacts">
      contacts<span class="helper">_path</span>
  </td>
  <td>
    GET
  </td>
  <td data-route-path="/contacts(.:format)">
    /contacts(.:format)
  </td>
  <td>
    <p>contacts#index</p>
  </td>
</tr>
<tr class="route_row" data-helper="path">
  <td data-route-name="">
  </td>
  <td>
    POST
  </td>
  <td data-route-path="/contacts(.:format)">
    /contacts(.:format)
  </td>
  <td>
    <p>contacts#create</p>
  </td>
</tr>
<tr class="route_row" data-helper="path">
  <td data-route-name="contact">
      contact<span class="helper">_path</span>
  </td>
  <td>
    GET
  </td>
  <td data-route-path="/contacts/:id(.:format)">
    /contacts/:id(.:format)
  </td>
  <td>
    <p>contacts#show</p>
  </td>
</tr>
<tr class="route_row" data-helper="path">
  <td data-route-name="">
  </td>
  <td>
    PATCH
  </td>
  <td data-route-path="/contacts/:id(.:format)">
    /contacts/:id(.:format)
  </td>
  <td>
    <p>contacts#update</p>
  </td>
</tr>
<tr class="route_row" data-helper="path">
  <td data-route-name="">
  </td>
  <td>
    PUT
  </td>
  <td data-route-path="/contacts/:id(.:format)">
    /contacts/:id(.:format)
  </td>
  <td>
    <p>contacts#update</p>
  </td>
</tr>
<tr class="route_row" data-helper="path">
  <td data-route-name="">
  </td>
  <td>
    DELETE
  </td>
  <td data-route-path="/contacts/:id(.:format)">
    /contacts/:id(.:format)
  </td>
  <td>
    <p>contacts#destroy</p>
  </td>
</tr>
<tr class="route_row" data-helper="path">
  <td data-route-name="rails_service_blob">
      rails_service_blob<span class="helper">_path</span>
  </td>
  <td>
    GET
  </td>
  <td data-route-path="/rails/active_storage/blobs/:signed_id/*filename(.:format)">
    /rails/active_storage/blobs/:signed_id/*filename(.:format)
  </td>
  <td>
    <p>active_storage/blobs#show</p>
  </td>
</tr>
<tr class="route_row" data-helper="path">
  <td data-route-name="rails_blob_representation">
      rails_blob_representation<span class="helper">_path</span>
  </td>
  <td>
    GET
  </td>
  <td data-route-path="/rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)">
    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)
  </td>
  <td>
    <p>active_storage/representations#show</p>
  </td>
</tr>
<tr class="route_row" data-helper="path">
  <td data-route-name="rails_disk_service">
      rails_disk_service<span class="helper">_path</span>
  </td>
  <td>
    GET
  </td>
  <td data-route-path="/rails/active_storage/disk/:encoded_key/*filename(.:format)">
    /rails/active_storage/disk/:encoded_key/*filename(.:format)
  </td>
  <td>
    <p>active_storage/disk#show</p>
  </td>
</tr>
<tr class="route_row" data-helper="path">
  <td data-route-name="update_rails_disk_service">
      update_rails_disk_service<span class="helper">_path</span>
  </td>
  <td>
    PUT
  </td>
  <td data-route-path="/rails/active_storage/disk/:encoded_token(.:format)">
    /rails/active_storage/disk/:encoded_token(.:format)
  </td>
  <td>
    <p>active_storage/disk#update</p>
  </td>
</tr>
<tr class="route_row" data-helper="path">
  <td data-route-name="rails_direct_uploads">
      rails_direct_uploads<span class="helper">_path</span>
  </td>
  <td>
    POST
  </td>
  <td data-route-path="/rails/active_storage/direct_uploads(.:format)">
    /rails/active_storage/direct_uploads(.:format)
  </td>
  <td>
    <p>active_storage/direct_uploads#create</p>
  </td>
</tr>

  </tbody>
</table>

Exemplo de JSON para requisição POST `/api/transactions`:

```json
{ 
   "id":1,
   "name":"Petrina Lynch IV",
   "email":"burton@powlowski.org",
   "birthdate":"1971-09-12",
   "created_at":"2020-02-15T00:49:49.599Z",
   "updated_at":"2020-02-15T00:49:49.599Z"
}
```

