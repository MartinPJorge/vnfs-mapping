graph [
  node [
    id 0
    label 1
    disk 1
    cpu 4
    memory 9
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 2
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 2
    memory 3
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 11
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 3
    memory 14
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 188
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 61
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 62
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 66
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 69
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 148
  ]
]