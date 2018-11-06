function run_rancher_proxy {
    local proxy="$1"
    local hostname="$2"

    docker run -d --restart=unless-stopped -p 80:80 -p 443:443 \
        -e HTTP_PROXY="http://${proxy}:3128" \
        -e HTTPS_PROXY="http://${proxy}:3128" \
        -e NO_PROXY="localhost,127.0.0.1,0.0.0.0,${proxy}/24,${hostname}" \
        rancher/rancher:latest
}

function run_rancher {
    #By default the Rancher server will listen on rancher.localhost. 
    #To access it we will need to set a hosts file entry so our browser can resolve the name.
    
    docker run -d --restart=unless-stopped \
        -p 80:80 -p 443:443 \
        rancher/rancher:latest
}
