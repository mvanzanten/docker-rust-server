FROM steamcmd/steamcmd

COPY start.sh /app/start.sh

WORKDIR /data

EXPOSE 28015/udp
EXPOSE 28016/tcp
EXPOSE 28016/udp

ENTRYPOINT ["/bin/bash"]
CMD ["/app/start.sh"]
