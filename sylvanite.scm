(define-module (sylvanite)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module (gnu packages sqlite)
  #:use-module (gnu packages crates-io))

(define-public rust-newick-0.5
  (package
   (name "rust-newick")
   (version "0.5.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "newick" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0ckp8n3yidq9w99zvafr26mdcc9xxxas1k5rsivj6knw9amnl8mv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs
      (("rust-pest" ,rust-pest-2)
       ("rust-pest-derive" ,rust-pest-derive-2)
       ("rust-sorbus" ,rust-sorbus-0.5)
       ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/delehef/newick")
   (synopsis "Parse, manipulate & write newick-formatted phylogenetic tree")
   (description "A library to read, edit and write newick-formatted trees in rust")
   (license cecill-c)))

(define-public rust-sorbus-0.5
  (package
   (name "rust-sorbus")
   (version "0.5.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "sorbus" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0dlcbdqn9qf8kmc3n7308fql0avwxf7ll9snaz4pzb0a4mk7hjg1"))))
   (build-system cargo-build-system)
   (arguments `(#:skip-build? #t))
   (home-page "https://github.com/delehef/sorbus")
   (synopsis "A tree manipulation library")
   (description "A library to manipulate n-ary trees in rust")
   (license cecill-c)))

(define-public sylvanite
  (package
   (name "sylvanite")
   (version "1.0.1")
   (source
    (origin
     (method git-fetch)
     (uri
      (git-reference
       (url "https://github.com/delehef/sylvanite")
       (commit (string-append "v" version))))
     (sha256 (base32 "1ja4r7rbqw5ngdbjrwbzwnbpp32iiavpi6yjn52lysv565pakp65"))))
   (build-system cargo-build-system)
   (arguments
    `(#:install-source? #f
      #:cargo-inputs
      (("rust-anyhow" ,rust-anyhow-1)
       ("rust-atty" ,rust-atty-0.2)
       ("rust-clap" ,rust-clap-3)
       ("rust-indicatif" ,rust-indicatif-0.16)
       ("rust-itertools" ,rust-itertools-0.10)
       ("rust-log" ,rust-log-0.4)
       ("rust-newick" ,rust-newick-0.5)
       ("rust-ordered-float" ,rust-ordered-float-2)
       ("rust-rayon" ,rust-rayon-1)
       ("rust-rusqlite" ,rust-rusqlite-0.26)
       ("rust-stderrlog" ,rust-stderrlog-0.4))))
   (native-inputs (list sqlite))
   (synopsis "Gene trees inference from syntenic & sequence information")
   (description "Sylvanite rebuilds syntenically-credible gene family trees from sequences and syntenic information.")
   (home-page "https://github.com/delehef/sylvanite")
   (license cecill)))

(define-public chainsaw
  (package
   (name "chainsaw")
   (version "1.0.0")
   (source
    (origin
     (method git-fetch)
     (uri
      (git-reference
       (url "https://github.com/delehef/chainsaw")
       (commit (string-append "v" version))))
     (sha256 (base32 "0asg0arah9zsyi9ghy45g8fpzq056ldxyckjxipff35m52zd3kaf"))))
   (build-system cargo-build-system)
   (arguments
    `(#:install-source? #f
      #:cargo-inputs
      (("rust-anyhow" ,rust-anyhow-1)
       ("rust-clap" ,rust-clap-2)
       ("rust-newick" ,rust-newick-0.5)
       ("rust-rusqlite" ,rust-rusqlite-0.26))))
   (native-inputs (list sqlite))
   (synopsis "Manipulate newick trees")
   (description "A tool suite to manipulate newick-formatted phylogenetic trees")
   (home-page "https://github.com/delehef/chainsaw")
   (license cecill)))

(define-public crisprs
  (package
   (name "crisprs")
   (version "1.1.0")
   (source
    (origin
     (method git-fetch)
     (uri
      (git-reference
       (url "https://github.com/delehef/crisprs")
       (commit (string-append "v" version))))
     (sha256 (base32 "02li4050yif6lqrvkndkbzg9mi1jrbdb1bshci21znrrg8mk7mii"))))
   (build-system cargo-build-system)
   (arguments
    `(#:install-source? #f
      #:cargo-inputs
      (("rust-clap" ,rust-clap-3)
       ("rust-eyre" ,rust-eyre-0.6)
       ("rust-lazy-static" ,rust-lazy-static-1)
       ("rust-log" ,rust-log-0.4)
       ("rust-maplit" ,rust-maplit-1)
       ("rust-rayon" ,rust-rayon-1)
       ("rust-smartstring" ,rust-smartstring-0.2)
       ("rust-stderrlog" ,rust-stderrlog-0.4))))
   (native-inputs (list sqlite))
   (synopsis "Manipulate newick trees")
   (description "A tool suite to manipulate newick-formatted phylogenetic trees")
   (home-page "https://github.com/delehef/chainsaw")
   (license cecill)))
