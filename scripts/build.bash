#!/usr/bin/env bash

set -e
set -u

src=${1}
input=${2}
dst=${3}

# List all required references files here.
references='dichalcogenides.bib software.bib superconductivity.bib'

out_path="${dst}/${input}"
out_archive="${out_path}.tar.gz"
sed_file='map.pdflatex.sed'

function pre_build () {
  if [[ -f ${out_archive} ]]; then
    echo Removing ${out_archive}
    rm ${out_archive}
  fi

  echo Removing and remaking ${out_path}
  if [[ -d ${out_path} ]]; then
    rm -rf ${out_path}
  fi
  mkdir -p ${out_path}
}

function build () {
  srcdir=$(pwd)
  tmpdir=$(mktemp -d)

  echo Building in ${tmpdir}
  cp -rp ${src} ${tmpdir}
  cd ${tmpdir}/${src}

  echo Creating expanded tex file
  latexpand --keep-comments -o ${input}.expanded.tex ${input}.tex
  cp -p ${input}.expanded.tex ${srcdir}/${out_path}/${input}.tex

  echo Copying figures
  cp -rp figures/* ${srcdir}/${out_path}

  echo Copying references
  cd components/references
  cp -p ${references} ${srcdir}/${out_path}

  echo Copying sed replacement rules
  cp -p ${srcdir}/${sed_file} ${srcdir}/${out_path}

  cd ${srcdir}
}

function post_build () {
  cd ${out_path}

  echo Fixing expanded tex file
  sed -i -e 's/components\/references\///g' ${input}.tex
  sed -i -e 's/figures\///g' ${input}.tex
  sed -i -f ${sed_file} ${input}.tex

  echo Adding bibliography
  latexmk -pdf ${input}.tex
  latexmk -c
  latexpand --keep-comments --expand-bbl ${input}.bbl \
    -o ${input}.expanded.tex ${input}.tex ${input}.tex
  mv ${input}.expanded.tex ${input}.tex

  echo Removing intermediate build files
  latexmk -c
  rm *.pdf *.bib *.bbl
  rm ${sed_file}

  cd ..
  cd ..
}

function save_build () {
  echo Creating archive
  tar -cz -f ${out_archive} -C ${out_path} .

  echo Building PDF
  cd ${out_path}
  latexmk -pdf ${input}.tex

	echo
	echo Archive written to ${dst}/${out_archive}
	echo Build and PDF saved in ${out_path}
}

pre_build
build
post_build
save_build

exit
