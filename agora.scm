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
           (version "1.3.0")
           (source (origin
                    (method git-fetch)
                    (uri (git-reference
                          (url "https://github.com/delehef/Agora")
                          (commit "437185df50e78bbda2baa37e80bdd6ddbba47c08")))
                    (sha256 (base32 "1nim25xd7v7jqjv4jgd1i1jvf34mc0jcs4499jysvwq0jh2qylbs"))))
           (build-system python-build-system)
           (synopsis "AGORA stands for “Algorithm for Gene Order Reconstruction in Ancestors” and was developed by Matthieu Muffato in the DYOGEN Laboratory at the École normale supérieure in Paris in 2008.")
           (description "Algorithm For Gene Order Reconstruction in Ancestors")
           (home-page "https://github.com/DyogenIBENS/Agora")
           (license gpl3+)
           (propagated-inputs (list python-psutil))))

          
(define-public genomicus-tools
  (package (name "GenomicusTools")
           (version "1.1.0")
           (source (origin
                    (method git-fetch)
                    (uri (git-reference
                          (url "https://github.com/delehef/genomicus-tools")
                          (commit "5f7c7b0a18e5c5216301c30c9eee1eb2148f9bed")))
                    (sha256 (base32 "1n8lxy2jvrp52j3bayz3cyify0fm4swk76w76fc7m4f8xal5y2li"))))
           (build-system python-build-system)
           (synopsis "TODO")
           (description "TODO")
           (home-page "https://github.com/delehef/genomicus-tools")
           (license gpl3+)))