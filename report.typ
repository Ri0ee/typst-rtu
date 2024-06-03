#import "@preview/codelst:2.0.1": *
#import "@preview/tablex:0.0.8": *
#import "template/template.typ": *

#show: project.with(
  title: "Laboratory work",
  subtitle: "Deducing whether the chicken or the egg",
  subject: "Modern Scientology",
  authors: (
    (
      name: "Bebek Bebekov",
      group: "1. group",
      id: "000KEK000",
    ),
    (
      name: "Kekek Kekekov",
      group: "2. group",
      id: "000LOL000",
    ),
  ),
  department: "Faculty of Science and Knowledge",
  year: "2023",
  lang: "en"
)

= Introduction

You can use bibliography in any section you want, for example, @foo2010 and @shaw1998.

You can also show your code with highlighting and line numbers:

#sourcecode[
```cpp
#include <torch/torch.h>

struct Net : torch::nn::Module {
  Net(int64_t N, int64_t M) {
    W = register_parameter("W", torch::randn({N, M}));
    b = register_parameter("b", torch::randn(M));
  }
  torch::Tensor forward(torch::Tensor input) {
    return torch::addmm(b, input, W);
  }
  torch::Tensor W, b;
};

int main() {
  Net net(4, 5);
  for (const auto& p : net.parameters()) {
    std::cout << p << std::endl;
  }
}
```
]

== Heading level 2

=== Heading level 3

#locate(loc => {
  let citation_count = query(ref, loc).filter(e => e.element == none).len()
  if citation_count > 0 [#bibliography("./works.bib", style: "ieee")]
})