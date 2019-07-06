const VueLoaderPlugin = require('vue-loader/lib/plugin');
const CleanWebpackPlugin = require('clean-webpack-plugin');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
 mode: 'development',
 entry: ['./src/main.ts'],
 module: {
   rules: [
     {
       test: /\.vue$/,
       use: 'vue-loader'
     },
     {
       test: /\.tsx?$/,
       loader: 'ts-loader',
       options: {
         appendTsSuffixTo: [/\.vue$/],
       }
     },
     {
       test: /\.css$/,
       use: ['vue-style-loader', 'css-loader']
     },
   ]
 },
 resolve: {
   extensions: ['.ts', '.js', '.vue', '.json'],
 },
 plugins: [
   new VueLoaderPlugin(),
   new CleanWebpackPlugin(),
   new HtmlWebpackPlugin({
     template: 'src/index.html',
     inject: true
   }),
 ],
 node: {
   fs: 'empty',
   tls: 'empty',
   net: 'empty'
 }
}
