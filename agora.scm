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
           (version "1.2.3")
           (source (origin
                    (method git-fetch)
                    (uri (git-reference
                          (url "https://github.com/delehef/Agora")
                          (commit "b8b46dc54e28db395a458e4c94136451513d6ef4")))
                    (sha256 (base32 "1l5bvcwwwcx7w5556393av1ay1cfy7fdywmgr4zw9801m137c0sq"))))
           (build-system python-build-system)
           (synopsis "AGORA stands for “Algorithm for Gene Order Reconstruction in Ancestors” and was developed by Matthieu Muffato in the DYOGEN Laboratory at the École normale supérieure in Paris in 2008.")
           (description "Algorithm For Gene Order Reconstruction in Ancestors")
           (home-page "https://github.com/DyogenIBENS/Agora")
           (license gpl3+)
           (propagated-inputs (list python-psutil))))

          
(define-public genomicus-tools
  (package (name "GenomicusTools")
           (version "1.0.0")
           (source (origin
                    (method git-fetch)
                    (uri (git-reference
                          (url "https://github.com/delehef/genomicus-tools")
                          (commit "3487bc757140f89efd8adb476230b675404c0ea6")))
                    (sha256 (base32 "07lwvrl8sr8mcbgrd116yrydxkkjy6ibd6643k5hw0z8cj4zla6g"))))
           (build-system python-build-system)
           (synopsis "TODO")
           (description "TODO")
           (home-page "https://github.com/delehef/genomicus-tools")
           (license gpl3+)))