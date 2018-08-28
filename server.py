import SimpleHTTPServer
import SocketServer
import time
import os

GB = 1024*1024*1024
a = "a" * (1 * GB)

PORT = 8000

Handler = SimpleHTTPServer.SimpleHTTPRequestHandler
Handler.extensions_map.update({
    '.webapp': 'application/x-web-app-manifest+json',
});

httpd = SocketServer.TCPServer(("", PORT), Handler)

print "Serving at port " + os.environ['FOO'], PORT
httpd.serve_forever()
