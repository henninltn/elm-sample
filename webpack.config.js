const path = require("path");

module.exports = {
  devtool: "source-map",

  entry: {
    app: ["./public/index.js"]
  },

  output: {
    path: path.resolve(__dirname + "/dist"),
    filename: "[name].js"
  },

  module: {
    rules: [
      {
        test: /\.html$/,
        exclude: /node_modules/,
        use: {
          loader: "file-loader",
          options: {
            name: "[name].[ext]"
          }
        }
      },
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        use: {
          loader: "elm-webpack-loader",
          options: {
            verbose: true,
            warn: true
          }
        }
      }
    ],

    noParse: /\.elm$/
  },

  node: {
    __dirname: false,
    __filename: false
  },

  devServer: {
    inline: true,
    stats: { colors: true }
  }
};
