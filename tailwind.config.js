/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./app/**/*.{js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        blood: {
          400: "#fb7185",
          500: "#f43f5e",
          600: "#e11d48",
          900: "#4c0519",
          950: "#120308",
        },
      },
      boxShadow: {
        glow: "0 0 28px rgba(244, 63, 94, 0.28)",
      },
    },
  },
  plugins: [],
};
