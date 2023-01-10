![Aegis](assets/aegis-banner.png "Aegis")

## Aegis Workload Demo

This is a demo Kubernetes deployment to test Aegis on a cluster.

In this particular case, we leverage [**Aegis Sidecar**][aegis-sidecar] instead
of directly talking to **Safe**. **Aegis Sidecar** abstracts certain cross-cutting
concerns and keep the workload code agnostic about how **Aegis** works internally.

If you want a more finer-grained control, then you can use [Aegis Go SDK][aegis-sdk-go]
and directly access **Aegis Safe**. Check out [this Aegis workload demo 
using a the Go SDK][aegis-demo-sidecar] for an example that leverages
the Aegis Go SDK instead.

[aegis-sidecar]: https://github.com/zerotohero-dev/aegis-sidecar
[aegis-sdk-go]: https://github.com/zerotohero-dev/aegis-sdk-go
[aegis-demo-sidecar]: https://github.com/zerotohero-dev/aegis-workload-demo-using-sidecar

[Check out Aegis’ README][aegis-readme] for more information about the project,
high level design, contributing guidelines, and code of conduct.

[aegis]: https://github.com/zerotohero-dev/aegis "Aegis"
[aegis-readme]: https://github.com/zerotohero-dev/aegis/blob/main/README.md "Aegis README"