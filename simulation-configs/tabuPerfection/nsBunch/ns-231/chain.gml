graph [
  node [
    id 0
    label 1
    disk 2
    cpu 3
    memory 8
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 3
    memory 10
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 1
    memory 10
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 3
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 16
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 47
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 31
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 94
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 46
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 73
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 94
  ]
]
