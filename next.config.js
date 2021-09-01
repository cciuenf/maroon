const bsconfig = require('./bsconfig.json');
const fs = require('fs');

const transpileModules = ['bs-platform'].concat(bsconfig['bs-dependencies']);
const withTranspiler = require('next-transpile-modules')(transpileModules);

const withBundleAnalyzer = require('@next/bundle-analyzer')({
  enabled: process.env.ANALYZE === 'true',
});

const config = {
  transpileModules,
  target: 'serverless',
  pageExtensions: ['jsx', 'js'],
  env: {
    ENV: process.env.NODE_ENV,
  },
  webpack: (config, options) => {
    const { isServer } = options;

    if (!isServer) {
      config.resolve.fallback = {
        fs: false,
        path: false,
      };
    }

    /* Precisamos dessa regra adicional apra que os arquivos com
       extensào .mjs sejam encontrados junto ao diretório src/ */
    /* We need this additional rule to make sure that mjs files are
      correctly detected within our src/ folder */
    config.module.rules.push({
      test: /\.m?js$/,
      use: options.defaultLoaders.babel,
      exclude: /node_modules/,
      type: 'javascript/auto',
      resolve: {
        fullySpecified: false,
      },
    });

    return config;
  },
  webpack5: true,
};

module.exports = withTranspiler(withBundleAnalyzer(config));
