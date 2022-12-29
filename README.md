# Guix-DYOGEN

This [Guix](https://guix.gnu.org/) channel features software developed at the [DYOGEN lab](https://www.ibens.ens.fr/spip.php?rubrique43).

To [add this channel](https://guix.gnu.org/manual/en/html_node/Specifying-Additional-Channels.html) to your Guix channels, append the following snippet to `~/.config/guix/channels.scm`:

```
(cons (channel
        (name 'dyogen)
        (url "https://github.com/delehef/guix-dyogen.git"))
      %default-channels)
```
