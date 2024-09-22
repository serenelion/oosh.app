import React from 'react';
import { Routes, Route } from 'react-router-dom';
import OoshStreamPage from './pages/OoshStreamPage'; // Adjust the import path as necessary

function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element={<OoshStreamPage />} />
        {/* Add other routes here as needed */}
      </Routes>
    </div>
  );
}

export default App;
