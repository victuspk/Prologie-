#!/bin/sh
# Builds index.html (installable phone app) from src/app.html (shared with the claude.ai Artifact).
set -e
cd "$(dirname "$0")"
{
  printf '%s\n' '<!doctype html><html lang="en"><head><meta charset="utf-8">'
  printf '%s\n' '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">'
  printf '%s\n' '<link rel="manifest" href="manifest.webmanifest"><meta name="theme-color" content="#1A3EA6">'
  printf '%s\n' '<meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-mobile-web-app-title" content="Lira Ledger">'
  printf '%s\n' '<link rel="apple-touch-icon" href="icon-192.png"><link rel="icon" href="icon.svg">'
  printf '%s\n' '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%}[hidden]{display:none!important}</style>'
  printf '%s\n' '</head><body>'
  cat src/app.html
  printf '%s\n' '<script>if("serviceWorker" in navigator&&location.protocol==="https:"){navigator.serviceWorker.register("sw.js").catch(function(){})}</script>'
  printf '%s\n' '</body></html>'
} > index.html
echo "built index.html"
