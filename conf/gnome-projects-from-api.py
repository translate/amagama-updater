import json
import sys

for project in json.loads(sys.stdin.read()):
    print(project['http_url_to_repo'])
