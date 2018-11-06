function run_rancher {
    local ip="$(hostname -I | cut -d' ' -f1)"
    local hostname="${1:-rancher.local}"

    docker run -d --restart=unless-stopped -p 80:80 -p 443:443 \
        -e HTTP_PROXY="http://${ip}:3128" \
        -e HTTPS_PROXY="http://${ip}:3128" \
        -e NO_PROXY="localhost,127.0.0.1,0.0.0.0,${ip}/24,${hostname}" \
        rancher/rancher:latest
}
