graph [
  node [
    id 0
    label 1
    disk 3
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 1
    memory 7
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 3
    memory 1
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 3
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 4
    memory 8
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 22
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 62
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 47
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 59
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 81
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 66
  ]
]
