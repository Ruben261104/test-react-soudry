import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument(); // Ce test fonctionne si "learn react" est présent
});


/*
// Test qui va volontairement échouer
test('Ce test doit échouer', () => {
  render(<App />);
  const errorElement = screen.getByText(/ce texte n'existe pas/i);
  expect(errorElement).toBeInTheDocument(); // Échouera car ce texte n'est pas dans App.js
});*/
