graph [
  node [
    id 0
    label 1
    disk 5
    cpu 1
    memory 8
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 14
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 4
    memory 2
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 16
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 16
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 2
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 76
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 34
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 23
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 100
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 80
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 74
  ]
]
