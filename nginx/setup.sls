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

/etc/pki/nginx/discore.org-crt:
  file:
    - managed
    - source: salt://nginx/templates/discore.org-crt
    - require:
      - pkg: nginx

/etc/pki/nginx/private/discore.org-key:
  file:
    - managed
    - source: salt://nginx/templates/discore.org-key
    - require:
      - pkg: nginx
