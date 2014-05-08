alias ngrok="ngrok -authtoken $(cat ~/.ngrok |cut -d' ' -f2-)"
alias localtunnel="ngrok -config ngrok.yaml start default"
