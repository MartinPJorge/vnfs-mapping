graph [
  node [
    id 0
    label 1
    disk 2
    cpu 2
    memory 11
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 3
    memory 2
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 13
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 3
    memory 5
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 1
    memory 16
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 4
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 45
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 39
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 74
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 89
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 22
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 78
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 97
  ]
]
