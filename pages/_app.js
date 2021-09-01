import Head from 'next/head';

import '../styles/main.css';

import Maroon from '../src/App.mjs';

function App(props) {
  return (
    <>
      <Head>
        <title>Plataforma PEA Pescarte</title>
      </Head>
      <Maroon {...props} />
    </>
  );
}

export default App;
