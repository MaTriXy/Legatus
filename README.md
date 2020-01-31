# Legatus 🏇

## Intro 🧑‍💻

The basic idea of *Legatus* is that we want some network abstraction layer that
sufficiently encapsulates actually calling Alamofire directly.

Also, it would be cool to have network layer, that will compatible with ***SwiftUI*** out-of-the-box 📦, isn't it?🧐

Luckily, *Legatus* was implemented with `Combine` framework and have couple of fancy methods, that will allow you to `assign(to:on:)` your response models right to `@Published` properties. Neat!🤩

### Some awesome features of Legatus🌟:

- SOLID design (e.g.: `APIClient` don't stores and configures requests, each request is encapsulated in separate entity).
- Easy retrying of requests.
- Elegant and flexible canceling of requests.
- ***SwiftUI*** compatiblity out-of-the-box.
- Support JSON and XML reponse formats.

*Legatus* is inspired by [Moya](https://github.com/Moya/Moya).

## 📝 Requirements
- Swift 5.0+
- macOS 10.15+
- iOS 13+
- tvOS 13+
- watchOS 5+


## Credits 👏

- [Moya](https://github.com/Moya/Moya)
- [Combine Community](https://github.com/CombineCommunity)
- @delba for [JASON](https://github.com/delba/JASON)
- @drmohundro for [SWXMLHash](https://github.com/drmohundro/SWXMLHash)
