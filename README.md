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

## Création d'une page d'accueil

```sh
$ bundle exec rails generate controller Home index --skip-helper --skip-test-framework --skip-assets
```

Modifier le fichier `config/routes.rb` :

```ruby
root 'home#index'
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
    <%= link_to 'CRUD', root_path, class: 'navbar-brand' %>
  </div>
</div>
<!-- -->
```

Modifier le fichier `app/views/home/index.html.erb` :

```html
<div class="page-header">
  <h1>Wesh,</h1>
</div>
<p>L'abus d'alcool est dangereux pour la santé.</p>
<p>Cdt.</p>
```

## Scaffold de `Alcohol`

```sh
$ bundle exec rails generate scaffold Alcohol name:string --skip-helper --skip-jbuilder --skip-test-framework --skip-assets
$ bundle exec rake db:migrate
```

Ajout d'une méthode dans le modèle Alcohol pour afficher son nom par défaut :

```ruby
class Alcohol < ActiveRecord::Base
  def to_s
    name
  end
end
```

## Scaffold de `Cocktail`

```sh
$ bundle exec rails generate scaffold Cocktail name:string alcohol:references --skip-helper --skip-jbuilder --skip-test-framework --skip-assets
$ bundle exec rake db:migrate
```
