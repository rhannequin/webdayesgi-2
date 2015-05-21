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
gem 'simple_form'
```

Génération de la configuration :

```sh
$ bundle exec rails generate simple_form:install --bootstrap
```

Modification des assets :

```sh
$ mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss
```

```scss
/* app/assets/stylesheets/application.scss */

@import "bootstrap-sprockets";
@import "bootstrap";
```

```js
// app/assets/javascripts/application.js

//= require jquery
//= require bootstrap-sprockets
```

## Scaffold de `Cocktail`

rails generate scaffold Cocktail name:string color:string --skip --skip-test-framework --skip-assets
