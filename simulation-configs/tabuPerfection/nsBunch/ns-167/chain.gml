graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 14
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 1
    memory 6
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 4
    memory 6
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 16
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 3
    memory 12
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 3
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 79
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 85
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 79
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 44
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 99
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 22
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 84
  ]
]
