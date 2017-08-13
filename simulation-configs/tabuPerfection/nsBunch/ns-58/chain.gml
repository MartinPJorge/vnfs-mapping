graph [
  node [
    id 0
    label 1
    disk 2
    cpu 2
    memory 8
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 2
    memory 11
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 3
    memory 4
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 15
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 13
  ]
  node [
    id 5
    label 6
    disk 2
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
    bw 38
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 97
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 70
  ]
  edge [
    source 0
    target 3
    delay 31
    bw 57
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 63
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 21
  ]
]
