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

```

3. If you dont need to middleware, you can ingore `~/traefik-middleware/` 