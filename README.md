# Heroku Buildpack for Swift

## Usage

```
$ mkdir myswiftapp
$ cd myswiftapp
$ echo 'print("Hello from Swift")' > hello.swift
$ git init
$ git commit -m "Initial commit"
$ heroku create
$ heroku buildpacks:set https://github.com/johnbeynon/heroku-buildpack-swift
$ git push heroku master
$ heroku run swift hello.swift

```
Counting objects: 1, done.
Writing objects: 100% (1/1), 183 bytes | 0 bytes/s, done.
Total 1 (delta 0), reused 0 (delta 0)
remote: Compressing source files... done.
remote: Building source:
remote:
remote: -----> Fetching set buildpack https://github.com/johnbeynon/heroku-buildpack-swift... done
remote: -----> Swift app detected
remote:       `.........`
remote:      ;;;;;;;;;;;;;
remote:     ;;;;;;;;;;;;;;;
remote:     ;;;;;;;;;.;;;;;                                +##
remote:     ;;,;.;;;;..;;;;`     `#,.+`              ;#   :`
remote:     ;;; ;`;;;; :;;;`     #                    `   #    :
remote:     ;;;; ; ;;;  ;;;`     ,                        #    #
remote:     ;;;;; , :;  ;;;`     +      +    '     +  ;  +######++
remote:     ;;;;;;   `  ;;;`     #`     #    #'    ;  '   #    #
remote:     ;;;;;;;     ;;;`      '#`   '    ,#   +   '   #    #
remote:     ;; ;;;;:    :;;`        :#   ;  # ;   #   '   #    #
remote:     ;;;          ;;`          #  #  #  '  ;   '   #    #
remote:     ;;;;.     `: ;;`          #  # `.  # ;    '   #    #
remote:     ;;;;;;;;;;;;;;;           #  ``#   ; #    '   #    #
remote:     ;;;;;;;;;;;;;;;           +   ##    :;    '   #    #
remote:      ;;;;;;;;;;;;;      +#:,+#    #`    #     '   #    #;:
remote:
remote: Installing Swift 2.2-SNAPSHOT-2015-12-01-b-ubuntu14.04
remote:
remote:
remote: -----> Discovering process types
remote:        Procfile declares types -> none
remote:
remote: -----> Compressing... done, 85.5MB
remote: -----> Launching... done, v30
remote:        https://swift-is-awesome.herokuapp.com/ deployed to Heroku
remote:
remote: Verifying deploy... done.
To https://git.heroku.com/swift-is-awesome.git
   24ad6b9..2b1ac80  master -> master
```

And then to confirm...

```
$ heroku run bash
Running bash on swift-is-awesome... up, run.6099
~ $ swift
Welcome to Swift version 2.2-dev (LLVM 46be9ff861, Clang 4deb154edc, Swift 778f82939c). Type :help for assistance.
  1>
```

