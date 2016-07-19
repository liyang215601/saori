include:
  - user.init

liyang:
  user.present:
    - fullname: xavier li
    - shell: /bin/bash
    - home: /home/liyang
    - uid: 50000
    - groups:
      - wheel
      - games
      - storage
    - require:
      - group: wheel
      - group: games
      - group: storage
  cmd.run:
    - name: "echo liyang|passwd --stdin liyang"
    - require:
      - user: liyang
