const path = require('node:path');
const webpack = require('webpack');

module.exports = (_, argv) => {
  const isProduction = argv.mode === 'production';
  console.log(`Build para ${isProduction ? 'prod' : 'dev'}...`);

  return {
    entry: './src/index.jsx',
    output: {
      filename: 'bundle.js',
      path: path.resolve(__dirname, 'public'),
      publicPath: isProduction ? '${BASE_FOLDER}' : '/',
    },
    module: {
      rules: [
        {
          test: /\.(js|jsx|ts|tsx)$/,
          exclude: /node_modules/,
          use: {
            loader: 'babel-loader',
            options: {
              presets: [
                '@babel/preset-env',
                '@babel/preset-react',
                '@babel/preset-typescript',
              ],
              plugins: ['@babel/plugin-transform-runtime'],
            },
          },
        },
        {
          test: /\.css$/,
          use: ['style-loader', 'css-loader', 'postcss-loader'],
        },
        {
          test: /\.svg$/,
          use: ['@svgr/webpack'],
        },
      ],
    },
    resolve: {
      extensions: ['.js', '.jsx', '.ts', '.tsx'],
      alias: {
        '@': path.resolve(__dirname, 'src'),
        '@components': path.resolve(__dirname, 'src/components'),
        '@assets': path.resolve(__dirname, 'src/assets'),
        '@styles': path.resolve(__dirname, 'src/styles'),
        '@utils': path.resolve(__dirname, 'src/utils'),
        '@hooks': path.resolve(__dirname, 'src/hooks'),
        '@contexts': path.resolve(__dirname, 'src/contexts'),
        '@services': path.resolve(__dirname, 'src/services'),
        '@routes': path.resolve(__dirname, 'src/routes'),
        '@pages': path.resolve(__dirname, 'src/pages'),
        '@controllers': path.resolve(__dirname, 'src/controllers'),
        '@config': path.resolve(__dirname, 'src/config'),
        '@layout': path.resolve(__dirname, 'src/layout'),
      },
    },
    plugins: [
      new webpack.DefinePlugin({
        'process.env.BASE_FOLDER': JSON.stringify(isProduction ? '${BASE_FOLDER}' : '/'),
      }),
    ],
    devtool: isProduction ? 'source-map' : 'inline-source-map',
    mode: isProduction ? 'production' : 'development',
    cache: {
      type: 'filesystem',
    },
  };
};
