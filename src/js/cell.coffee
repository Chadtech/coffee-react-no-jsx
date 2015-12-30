# Libraries
React       = require 'react'
{PropTypes} = require 'react'
ReactDOM    = require 'react-dom'
_           = require 'lodash'

# DOM Elements
{p, a, span, div, input, img} = React.DOM


CellClass = React.createClass

  getInitialState: -> null

  render: ->
    itsClass = 'cell'
    if @props.content.length > 0 
      itsClass += ' filled'

    input
      className:  itsClass
      value:      @props.content
      onChange:   @props.handle
      'data-col': @props.ci
      'data-row': @props.ri

module.exports = React.createFactory CellClass