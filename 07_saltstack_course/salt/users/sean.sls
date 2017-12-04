# Don't store actual passphrases in a public Git repository

Create the user Sean:
  user.present:
    - name: sean
    - fullname: Sean
    - shell: /bin/csh
    - home: /home/sean
    - uid: 10000
    - gid_from_name: True
    - password: $6$Czlrp1CjNp75GgzZ$e14FGyG/9PKqKDmKLmlj/IUiU953NaLXpjsaX1SGzMi6E/6jBbpq6i9t/L1U2uDEysEz5FS0oLA5n5HmOLqVO/
    - groups:
      - wheel
  ssh_auth.present:
    - name: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBgbeCnd4DZJvy9IFHOH5Pt32GUhmK6ZoyEjz2YRJXgMBvLOjfx1TmL32PkIc7mOWFcE0qtxiiEZoTn3XYHY8DzjL9gYEEcAHtAcJ4WV5zhWiCMQaNpfhmnvEWUPN7CqyG1sKxeRQJflkjT0KDJt25Enb/mKqfqBs61HUYjM/hQvl0hRn3NKN3XgBWjAKQ6Myk4MRi65tCpfk5czuWl9jDym7VlRi9elncFzNaIM4m6WK4I3/MKnryMAwEe9KHRPPMAPDp7Rx/FsMmUb0tG//w7CA5cljWKDG7NwUuL38z9RqdZ6haRMF0YYFhxXB1XFU+G4HsvitlkT8RsQ9hvkQT sean@teachnix
    - user: sean
    - enc: ssh-rsa
