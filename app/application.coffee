class BatmanExpress extends Batman.App
  @set 'mission', 'fight crime'
  
  # Make Application available in the global namespace so it can be used
  # as a namespace and bound to in views.
  @global yes

  # Source the AppController and set the root route to AppController#index.
  @controller 'app'
  @root 'app#index'

