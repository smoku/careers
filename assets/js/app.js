// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import css from "../css/app.css"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import "phoenix_html"

import {hydrateClient} from 'react_render/priv/client'
import Map from './components/Map.jsx'
import Text from './components/Text.jsx'

function getComponentFromStringName(stringName) {
  // Map string component names to your react components here
  if (stringName === 'Map') {
    return Map
  }
  if (stringName === 'Text') {
    return Text
  }

  return null
}

hydrateClient(getComponentFromStringName)

// Import local files
//
// Local files can be imported directly using relative paths, for example:
// import socket from "./socket"
