import "core-js/stable";
import "regenerator-runtime/runtime";
import "stylesheets/application"

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bulma")
require("bunny")

const images = require.context('../images', true)
const imagePath = (name) => images(name, true)
