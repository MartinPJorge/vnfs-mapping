graph [
  node [
    id 0
    label 1
    disk 2
    cpu 3
    memory 5
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 14
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 1
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 15
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 4
    memory 15
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 3
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 57
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 60
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 98
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 52
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 63
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 86
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 32
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 42
  ]
]
