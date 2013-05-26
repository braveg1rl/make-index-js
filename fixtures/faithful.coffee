module.exports =
  input:
    adapt: "./adapt"
    each: "./each"
    forEach: "./each"
    eachSeries: "./eachSeries"
    forEachSeries: "./eachSeries"
    adapt: "./adapt"
    makePromise: "make-promise"
    collect: "./collect"
    throwHard: "./throwHard"
  output: """
module.exports = {
  "adapt": require("./adapt"),
  "each": require("./each"),
  "forEach": require("./each"),
  "eachSeries": require("./eachSeries"),
  "forEachSeries": require("./eachSeries"),
  "makePromise": require("make-promise"),
  "collect": require("./collect"),
  "throwHard": require("./throwHard")
}
"""
    