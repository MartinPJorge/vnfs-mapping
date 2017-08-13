graph [
  node [
    id 0
    label 1
    disk 9
    cpu 4
    memory 11
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 8
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 5
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 1
    memory 1
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 4
    memory 10
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 1
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 23
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 47
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 98
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 47
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 52
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 69
  ]
]
