module.exports = makeIndexJS = (modules) ->
  makeIndexJSFromObject modules

makeIndexJSFromObject = (modules) ->
  propertyLiterals = (makePropertyLiteral name, path for name, path of modules)
  """
  module.exports = {
  #{propertyLiterals.join ",\n"}
  }
"""

makePropertyLiteral = (name, stringValue) ->
  nameLiteral = JSON.stringify name.toString()
  pathLiteral = JSON.stringify stringValue.toString()
  """  #{nameLiteral}: require(#{pathLiteral})"""