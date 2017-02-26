nginx:
  pkg.installed: []
  service.running:
    - require:
      - pkg: nginx

/usr/share/nginx/html/index.html:
  file:
    - managed
    - source: salt://nginx/templates/index.html
    - require:
      - pkg: nginx

/etc/nginx/nginx.conf:
  file:
    - managed
    - source: salt://nginx/configs/nginx.conf
    - require:
      - pkg: nginx
