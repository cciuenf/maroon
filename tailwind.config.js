module.exports = {
  purge: {
    content: ['./src/**/*.res'],
    options: {
      safelist: ['html', 'body'],
    },
  },
  darkMode: false,
  theme: {
    colors: {
      blue: {
        100: '#BCE0EF',
        300: '#88B8CC',
        500: '#277DA1',
        700: '#0E4771',
      },
      green: '#25CE52',
      orange: '#F8961E',
      yellow: '#F5BD00',
      red: '#FF635D',
      white: '#FFFFFF',
    },
    fontSize: {
      xs: '.75rem',
      sm: '.875rem',
      base: '1rem',
      lg: '1.125rem',
      xl: '1.25rem',
      '2xl': '1.5rem',
      '3xl': '1.875rem',
      '4xl': '2.25rem',
      '5xl': '3rem',
      '6xl': '4rem',
    },
    fontFamily: {
      sans: [
        'Open Sans'
      ]
    },
  },
  variants: {
    width: ['responsive'],
  },
  plugins: [],
};
