path = require('path')
express = require('express')
app = module.exports = express.createServer()

# ------------------------------------------------------------
#  Configuration
# ------------------------------------------------------------

app.configure ->
  app.set 'views', __dirname + '/app'
  app.set 'view engine', 'jade'
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use require('connect-assets')(src:'app')
  app.use express.static(__dirname + '/public')
  app.use app.router

app.configure 'development', ->
  app.use express.errorHandler({ dumpExceptions: true, showStack: true })

app.configure 'production', ->
  app.use(express.errorHandler())

# Serve batman.js, etc.
for p in require.paths
  path.exists p + '/batman', (exists) ->
    if exists
      app.use '/batman', express.static(p + '/batman/lib')

# ------------------------------------------------------------
#  Routes
# ------------------------------------------------------------

app.get '/', (req, res) ->
  res.render 'views/application', layout: false

app.get /\/(.*)\.html/, (req, res) ->
  res.render req.params[0], layout: false

app.listen(3000)
console.log("Express server listening on port %d in %s mode", app.address().port, app.settings.env)
