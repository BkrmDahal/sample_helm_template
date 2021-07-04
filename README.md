1. Deploy fapp

```bash
bash start.sh
```

2. Set env from secret
```yaml

- name: AWS_DEFAULT_REGION
    valueFrom:
    secretKeyRef:
        name: aws
        key: region

# pass args
        args:
          - --database
          - redis
          - --redis
          - "redis://redis:6379/4"
          - --port
          - "8080"
```

3. If you dont need to middleware, you can ingore `~/traefik-middleware/` 

4. Dry run and get yaml only  `helm template --debug -f values.yaml ./helm_charts`.
