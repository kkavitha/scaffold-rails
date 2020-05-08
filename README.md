# README
Sample rails scaffold - Webpacker , Bootsrap + Rails 6

### Troubleshooting install issues

Created with :- 
```rails new mpcore3 --webpacker* # points to js in packs```

###  Webpack issues

Main issue: Resolve -> webpacker configuration file not found
##### STEP 1
```rails webpacker:install. 
rails  webpacker:compile # will create the necessary env configs + folders
rails  webpacker:compile
```

##### STEP 2
Install bootsrap - yarn add bootstrap@4.3.1 jquery popper.js
Modify environment.js 

```
const { environment } = require('@rails/webpacker')
const webpack = require('webpack')
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))
module.exports = environment
```

#####  STEP 3
Update your - app/javascript/packs/application.js
```import 'bootstrap'
import './src/application.scss'
```



