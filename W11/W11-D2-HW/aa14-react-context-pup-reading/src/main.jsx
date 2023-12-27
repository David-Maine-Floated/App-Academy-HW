import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';
import './index.css';
import { PupContext } from './context/PupContext';

ReactDOM.createRoot(document.getElementById("root")).render(

    <PupContext>
      <App />
    </PupContext>

);
