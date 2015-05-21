# CRUD

## Installation

```
$ rails new crud
$ cd crud
```

Modification du Gemfile

```ruby
gem 'therubyracer', platforms: :ruby
```

Lancer `$ bundle install`.

## Ajout de bibliothèques

```
gem 'bootstrap-sass'
gem 'simple_form'
gem 'bootstrap-generators'
```

Génération de la configuration :

```sh
$ bundle exec rails generate simple_form:install --bootstrap
$ bundle exec rails generate bootstrap:install
# ne pas écraser lib/templates/erb/scaffold/_form.html.erb
# écraser lib/templates/erb/scaffold/_form.html.erb
```

Modification des assets :

```sh
$ mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss
```

```scss
/* app/assets/stylesheets/application.scss */

@import 'bootstrap-sprockets';
@import 'bootstrap-generators.scss';
```

```js
// app/assets/javascripts/application.js

//= require jquery
//= require bootstrap-sprockets
```

Modifier le fichier `app/views/layouts/application.html.erb` :

```html
<title>CRUD</title>
<!-- -->
<div class="container">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <%= link_to "CRUD", "#", class: "navbar-brand" %>
  </div>
</div>
```

## Scaffold de `Cocktail`

```sh
$ bundle exec rails generate scaffold Cocktail name:string --skip-helper --skip-jbuilder --skip-test-framework --skip-assets
$ bundle exec rake db:migrate
```
