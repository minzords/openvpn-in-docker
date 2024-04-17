FROM alpine:latest
RUN apk add --update --no-cache openvpn

COPY vpn.ovpn /etc/openvpn/client.ovpn

CMD /usr/sbin/openvpn /etc/openvpn/client.ovpn