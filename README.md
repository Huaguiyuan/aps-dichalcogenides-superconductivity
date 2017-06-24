# Unconventional superconductivity and anomalous response in hole-doped transition metal dichalcogenides

[![All rights reserved](https://img.shields.io/badge/license-All_rights_reserved-blue.svg)](./LICENSE.txt)

## Description

Unconventional superconductivity and anomalous response in hole-doped transition metal dichalcogenides.

## Requirements

- A modern [LaTeX] distribution, e.g., [TeX Live],
  packaged with [XeLaTeX], [Latexmk], and optionally [ChkTeX].
- [GNU Make].
- [Node.js] with [npm].
  Only required when using Bower for external dependencies
  or for autobuilding on changes.

[ChkTeX]: http://baruch.ev-en.org/proj/chktex/
[GNU Make]: https://www.gnu.org/software/make/
[LaTeX]: https://www.latex-project.org/
[Latexmk]: https://www.ctan.org/pkg/latexmk/
[Node.js]: https://nodejs.org/
[npm]: https://npmjs.org/
[TeX Live]: https://www.tug.org/texlive/
[XeLaTeX]: http://www.xelatex.org/

## Development

Install any Node and Bower dependencies with

```
$ npm install
```

Build to `build/` with

```
$ make
```

Clean out temporary and build files with

```
$ make clean
```

Lint code with

```
$ make check
```

Watch code and rebuild on changes with

```
$ npm run watch
```

## Source Code

The [aps-dichalcogenides-superconductivity source] is hosted on GitHub.
To clone the project run

```
$ git clone https://github.com/razor-x/aps-dichalcogenides-superconductivity.git
```

[aps-dichalcogenides-superconductivity source]: https://github.com/razor-x/aps-dichalcogenides-superconductivity

## Contributing

Please submit and comment on bug reports and feature requests.

To submit a patch:

1. Fork it (https://github.com/razor-x/aps-dichalcogenides-superconductivity/fork).
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Make changes.
4. Commit your changes (`git commit -am 'Add some feature'`).
5. Push to the branch (`git push origin my-new-feature`).
6. Create a new Pull Request.

## License

This work was published 18 April 2017 as Phys. Rev. B 95, 144508
by Evan Sosenko, Junhua Zhang, and Vivek Aji:
[Unconventional superconductivity and anomalous response in hole-doped transition metal dichalcogenides](https://journals.aps.org/prb/abstract/10.1103/PhysRevB.95.144508),
and is Copyright © 2017 by the American Physical Society.

## Warranty

This software is provided by the copyright holders and contributors "as is" and
any express or implied warranties, including, but not limited to, the implied
warranties of merchantability and fitness for a particular purpose are
disclaimed. In no event shall the copyright holder or contributors be liable for
any direct, indirect, incidental, special, exemplary, or consequential damages
(including, but not limited to, procurement of substitute goods or services;
loss of use, data, or profits; or business interruption) however caused and on
any theory of liability, whether in contract, strict liability, or tort
(including negligence or otherwise) arising in any way out of the use of this
software, even if advised of the possibility of such damage.
