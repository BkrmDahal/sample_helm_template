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