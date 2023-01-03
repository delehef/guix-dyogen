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
           (version "1.1")
           (source (origin
                    (method git-fetch)
                    (uri (git-reference
                          (url "https://github.com/delehef/Agora")
                          (commit "f71d20fcc2dc1aa7983ee516b22dccba43bd29a7")))
                    (sha256 (base32 "11prqk49jb8da6d0d6www680ns491asizb7gyy36137fc5p87cyr"))))
           (build-system python-build-system)
           (synopsis "AGORA stands for “Algorithm for Gene Order Reconstruction in Ancestors” and was developed by Matthieu Muffato in the DYOGEN Laboratory at the École normale supérieure in Paris in 2008.")
           (description "Algorithm For Gene Order Reconstruction in Ancestors")
           (home-page "https://github.com/DyogenIBENS/Agora")
           (license gpl3+)
           (propagated-inputs (list python-psutil))))
