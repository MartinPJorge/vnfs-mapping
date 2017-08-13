graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 9
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 13
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 12
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 12
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 1
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 39
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 26
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 95
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 27
  ]
  edge [
    source 1
    target 5
    delay 28
    bw 40
  ]
  edge [
    source 2
    target 4
    delay 25
    bw 63
  ]
]
