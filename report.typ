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
  institute: "Riga Technical University",
  year: "2023"
)

= Introduction

#import "@preview/codelst:1.0.0": sourcecode

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
