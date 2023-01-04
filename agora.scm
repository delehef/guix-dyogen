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
           (version "1.2.1")
           (source (origin
                    (method git-fetch)
                    (uri (git-reference
                          (url "https://github.com/delehef/Agora")
                          (commit "7d3ecf36b67820a4af7cceacd7c4cf2fb736e7f6")))
                    (sha256 (base32 "1kpnilkqh2xhbfhg8w6z63r135wji1ifcv9hqqsm0q5nkiz4j451"))))
           (build-system python-build-system)
           (synopsis "AGORA stands for “Algorithm for Gene Order Reconstruction in Ancestors” and was developed by Matthieu Muffato in the DYOGEN Laboratory at the École normale supérieure in Paris in 2008.")
           (description "Algorithm For Gene Order Reconstruction in Ancestors")
           (home-page "https://github.com/DyogenIBENS/Agora")
           (license gpl3+)
           (propagated-inputs (list python-psutil))))
