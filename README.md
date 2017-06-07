# mlaccetti/kubectl

### What is `kubectl`

`kubectl` is a CLI tool to control a [Kubernetes](http://kubernetes.io/) cluster. This container also allows a user to run arbitrary commands.

### Usage
```
docker run --rm mlaccetti/kubectl --help
```

Note: Entrypoint is set to kubectl so do **not** type `wernight/kubectl kubectl`.

If you want to run your own supplied command, you can instead run
```
docker run --rm mlaccetti/kubectl -- echo "Something"; kubectl --version
```
