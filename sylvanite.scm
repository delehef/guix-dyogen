(define-module (sylvanite)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module (gnu packages sqlite)
  #:use-module (gnu packages crates-io))

(define-public rust-aa_similarity-0.1
  (package
   (name "rust-aa_similarity")
   (version "0.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "aa_similarity" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1j8gkdysf2f5g7b37z76lad4xinr7pnbgnbac4hcahlgvd7ip6nw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs
      (("rust-nom" ,rust-nom-6))))
   (home-page "https://github.com/jeanmanguy/amino-acids")
   (synopsis "Substitution matrices for use in protein sequence analysis and alignment.")
   (description "Substitution matrices for use in protein sequence analysis and alignment.")
   (license (list expat asl2.0))))

(define-public rust-identity-hash-0.1
  (package
   (name "rust-identity-hash")
   (version "0.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "identity-hash" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1nj5byyh6z6myps53qzry70ha33y4l8gwii37gqxhdh4j2m7rpfz"))))
   (build-system cargo-build-system)
   (arguments `(#:skip-build? #t))
   (home-page "https://crates.io/crates/identity-hash")
   (synopsis "Fast hash-based types for integers")
   (description "Fast hash-based types for integers")
   (license (list expat asl2.0))))

(define-public rust-aa_name-0.1
  (package
   (name "rust-aa_name")
   (version "0.1.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "aa-name" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0najbpsb2plyh13i5pwg2k53kz0h6wwqpm87hf4jpqkgqx64fkdf"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/jeanmanguy/amino-acids")
   (synopsis "Basic enum for amino acid names.")
   (description "Basic enum for amino acid names.")
   (license (list expat asl2.0))))

(define-public rust-newick-0.11
  (package
   (name "rust-newick")
   (version "0.11.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "newick" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "034w2qqxpssz8agxlgva2l1dd2s40j4lsl7xx0qihlxd49qad6np"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs
      (("rust-pest" ,rust-pest-2)
       ("rust-pest-derive" ,rust-pest-derive-2)
       ("rust-sorbus" ,rust-sorbus-0.12)
       ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/delehef/newick")
   (synopsis "Parse, manipulate & write newick-formatted phylogenetic tree")
   (description "A library to read, edit and write newick-formatted trees in rust")
   (license cecill-c)))

(define-public rust-sorbus-0.12
  (package
   (name "rust-sorbus")
   (version "0.12.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "sorbus" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1y79vr3cqsiim6siqfq8ij8dz3w2xcdwlz5dpkzjwigaph12k8nl"))))
   (build-system cargo-build-system)
   (arguments `(#:skip-build? #t))
   (home-page "https://github.com/delehef/sorbus")
   (synopsis "A tree manipulation library")
   (description "A library to manipulate n-ary trees in rust")
   (license cecill-c)))

(define-public rust-clap-verbosity-flag-1
  (package
   (name "rust-clap-verbosity-flag")
   (version "1.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "clap-verbosity-flag" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0b6402ng8fcc5f0ir61xif1c58f1rvw0b8sm2lb8wbq8830gjdh6"))))
   (build-system cargo-build-system)
   (arguments `(#:skip-build? #t))
   (home-page "https://crates.io/crates/clap-verbosity-flag")
   (synopsis "Easily add a `--verbose` flag to CLIs using Structopt")
   (description "Easily add a --verbose flag to CLIs using clap")
   (license asl2.0)))

(define-public rust-buche-0.7
  (package
   (name "rust-buche")
   (version "0.7.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "buche" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1j9j10wl2mf1d5d8w0lnqrzb8hhc1kijag4lgkc3lcbzhgyi5xfc"))))
   (build-system cargo-build-system)
   (arguments `(#:skip-build? #t))
   (home-page "https://github.com/delehef/buche")
   (synopsis "Logger that logs to stderr based on verbosity specified")
   (description "A fork of stderrlog, a logger that aims to provide a simple case of env_logger that just logs to stderr based on verbosity.")
   (license cecill-c)))

(define-public rust-petname-1
  (package
   (name "rust-petname")
   (version "1.1.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "petname" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0l3rvz6ww33v7h1cwgqcpklb00rbygyi3c2np2z50dcnc16idr7w"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs
      (("rust-clap" ,rust-clap-3)
       ("rust-rand" ,rust-rand-0.8)
       ("rust-iterrools" ,rust-itertools-0.10))))
   (home-page "https://github.com/delehef/buche")
   (synopsis "Logger that logs to stderr based on verbosity specified")
   (description "A fork of stderrlog, a logger that aims to provide a simple case of env_logger that just logs to stderr based on verbosity.")
   (license cecill-c)))

(define-public rust-syntesuite
  (package
   (name "rust-syntesuite")
   (version "0.4.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "syntesuite" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0mp605hj7g8j1h4pmp3ancmn47j30ipj8jwqa0q6f2wscqlzkxns"))))
   (build-system cargo-build-system)
   (arguments 
    `(#:skip-build? #t
      #:cargo-inputs
      (("rust-anyhow" ,rust-anyhow-1)
       ("rust-colored" ,rust-colored-2)
       ("rust-flate2" ,rust-flate2-1)
       ("rust-log" ,rust-log-0.4)
       ("rust-petname" ,rust-petname-1)
       ("rust-regex" ,rust-regex-1)
       ("rust-rusqlite" ,rust-rusqlite-0.26)
       ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/delehef/syntesuite")
   (synopsis "TODO")
   (description "TODO")
   (license cecill-c)))


(define-public sylvanite
  (package
   (name "sylvanite")
   (version "1.6.2")
   (source
    (origin
     (method git-fetch)
     (uri
      (git-reference
       (url "https://github.com/delehef/sylvanite")
       (commit (string-append "v" version))))
     (sha256 (base32 "0lchksvjyz546iv8080a06rrkix4apdbg8s476x75r4lmxxf851i"))))
   (build-system cargo-build-system)
   (arguments
    `(#:install-source? #f
      #:cargo-inputs
      (("rust-anyhow" ,rust-anyhow-1)
       ("rust-atty" ,rust-atty-0.2)
       ("rust-buche" ,rust-buche-0.7)
       ("rust-chainsaw" ,rust-chainsaw-1)
       ("rust-clap" ,rust-clap-3)
       ("rust-clap-verbosity-flag" ,rust-clap-verbosity-flag-1)
       ("rust-colored" ,rust-colored-2)
       ("rust-identity-hash" ,rust-identity-hash-0.1)
       ("rust-indicatif" ,rust-indicatif-0.16)
       ("rust-itertools" ,rust-itertools-0.10)
       ("rust-log" ,rust-log-0.4)
       ("rust-newick" ,rust-newick-0.11)
       ("rust-ordered-float" ,rust-ordered-float-3)
       ("rust-rayon" ,rust-rayon-1)
       ("rust-syntesuite" ,rust-syntesuite))))
   (native-inputs (list sqlite))
   (synopsis "Gene trees inference from syntenic & sequence information")
   (description "Sylvanite rebuilds syntenically-credible gene family trees from sequences and syntenic information.")
   (home-page "https://github.com/delehef/sylvanite")
   (license cecill)))

(define-public rust-chainsaw-1
  (package
   (name "chainsaw")
   (version "1.14.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "chainsaw" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "02vgqf23zymgrbks7bn076dh02lk6iy4zclg041882m4mkbnyy4g"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs
      (("rust-anyhow" ,rust-anyhow-1)
       ("rust-clap" ,rust-clap-3)
       ("rust-identity-hash" ,rust-identity-hash-0.1)
       ("rust-itertools" ,rust-itertools-0.10)
       ("rust-newick" ,rust-newick-0.11)
       ("rust-rusqlite" ,rust-rusqlite-0.26)
       ("rust-syntesuite" ,rust-syntesuite))))
   (native-inputs (list sqlite))
   (synopsis "Manipulate newick trees")
   (description "A tool suite to manipulate newick-formatted phylogenetic trees")
   (home-page "https://github.com/delehef/chainsaw")
   (license cecill)))

(define-public crisprs
  (package
   (name "crisprs")
   (version "1.2.0")
   (source
    (origin
     (method git-fetch)
     (uri
      (git-reference
       (url "https://github.com/delehef/crisprs")
       (commit (string-append "v" version))))
     (sha256 (base32 "1cahfq149iljd2kha4d6mrvl053wfv1x138zk0kvi0j69vly1szf"))))
   (build-system cargo-build-system)
   (arguments
    `(#:install-source? #f
      #:cargo-inputs
      (("rust-aa_similarity" ,rust-aa_similarity-0.1)
       ("rust-aa_name",rust-aa_name-0.1)
       ("rust-clap" ,rust-clap-3)
       ("rust-eyre" ,rust-eyre-0.6)
       ("rust-lazy-static" ,rust-lazy-static-1)
       ("rust-log" ,rust-log-0.4)
       ("rust-maplit" ,rust-maplit-1)
       ("rust-once-cell" ,rust-once-cell-1)
       ("rust-rayon" ,rust-rayon-1)
       ("rust-smartstring" ,rust-smartstring-0.2)
       ("rust-buche" ,rust-buche-0.7))))
   (native-inputs (list sqlite))
   (synopsis "Tools to manipulate sequences")
   (description "A tool suite to manipulate FASTA sequences")
   (home-page "https://github.com/delehef/chainsaw")
   (license cecill)))
