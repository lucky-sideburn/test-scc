FROM python
EXPOSE 8080
CMD ["python","-m","SimpleHTTPServer","8000"]
