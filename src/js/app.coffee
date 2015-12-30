# Libraries
React       = require 'react'
{PropTypes} = require 'react'
ReactDOM    = require 'react-dom'
_           = require 'lodash'

# DOM
{div} = React.DOM

#Redux
reducer    = require './reducer'

# Components
Main = require './main'

AppClass = React.createClass
  getInitialState: -> null
  render: ->
    div null, 
      Main()  



App = React.createElement AppClass
ReactDOM.render App, document.getElementById 'content'



