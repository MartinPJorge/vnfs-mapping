graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 11
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 4
    memory 11
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 13
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 2
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 1
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 60
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 70
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 23
  ]
  edge [
    source 1
    target 3
    delay 31
    bw 68
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 47
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 65
  ]
]
