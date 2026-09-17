import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "EMORCE STAND",
  description: "Remote stand · script injection · emorce",
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body className="antialiased">{children}</body>
    </html>
  );
}
