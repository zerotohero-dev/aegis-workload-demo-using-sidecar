# Aegis

![Aegis](assets/aegis-icon.png "Aegis")

keep your secrets… secret

## Aegis Workload Demo (*using sidecar*)

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

## Links

* **Homepage**: <https://aegis.ist>
* **Documentation**: <https://aegis.ist/docs/>
* **Changelog**: <https://aegis.ist/changelog/>
* **Community**: [Join Aegis’ Slack Workspace][slack-invite]
* **Contact**: <https://aegis.ist/contact/>
* **Media Kit**: <https://aegist.ist/media/>

[slack-invite]: https://join.slack.com/t/aegis-6n41813/shared_invite/zt-1myzqdi6t-jTvuRd1zDLbHX0gN8VkCqg "Join aegis.slack.com"
