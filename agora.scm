(define-module (agora)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system python)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-xyz))

(define-public agora
  (package (name "AGORA")
           (version "1.0")
           (source (origin
                    (method git-fetch)
                    (uri (git-reference
                          (url "https://github.com/delehef/Agora")
                          (commit "a364fec1c7a2d5603feec0c0ace0dfdad8c9d07f")))
                    (sha256 (base32 "00g1xdc948fs0hyr1p0291wkgkrww5nph41i376xjy2sfgzb3ph2"))))
           (build-system python-build-system)
           (synopsis "AGORA stands for “Algorithm for Gene Order Reconstruction in Ancestors” and was developed by Matthieu Muffato in the DYOGEN Laboratory at the École normale supérieure in Paris in 2008.")
           (description "Algorithm For Gene Order Reconstruction in Ancestors")
           (home-page "https://github.com/DyogenIBENS/Agora")
           (license gpl3+)
           (propagated-inputs (list python-psutil))))
