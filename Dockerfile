FROM python
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN pip install img2pdf
ENTRYPOINT ["/entrypoint.sh"]
