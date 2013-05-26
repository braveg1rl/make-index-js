ff = require "../fixtures/faithful"
assert = require "assert"

makeIndexJS = require "../"
describe "makeIndexJS", ->
  it "makes index js", ->
    assert.deepEqual ff.output, makeIndexJS(ff.input), "not equal"