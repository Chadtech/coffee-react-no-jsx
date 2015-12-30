# Libraries
React       = require 'react'
{PropTypes} = require 'react'
ReactDOM    = require 'react-dom'
_           = require 'lodash'


# DOM
CtDom     = require './ct-dom'
CtFactory = require './ct-factory'
{ row
  container
  columnNumber
  point
  column } = CtFactory CtDom


# Components
Tracker = require './tracker'


Main = React.createClass

  getInitialState: -> null

  render: ->

    container null,
      Tracker()
      Tracker()


module.exports = React.createFactory Main