```docker build -t pycharm-docker .
```

```docker run -it --rm \
  -v $(pwd):/project \
  -p 8112:8112 \
  pycharm-docker```
