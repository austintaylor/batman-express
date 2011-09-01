# Batman-Express

This is an application boilerplate for using [express.js][] on the server, and [batman.js][] on the client.
It is also set up with [CoffeeScript][], [Jade][], and [Stylus][].

  [express.js]: http://expressjs.com/
  [batman.js]: http://batmanjs.org/
  [CoffeeScript]: http://jashkenas.github.com/coffee-script/
  [Jade]: http://jade-lang.com/
  [Stylus]: http://learnboost.github.com/stylus/

## Batman

The contents of the `app` directory is basically the same as what Batman generates for a new application,
but translated into Jade and CoffeeScript.

The CSS has been translated into Stylus and extracted into `app/stylesheets/application.styl`.

## Express

`app.coffee` bootstraps a basic Express server with everything Batman needs to work properly.
