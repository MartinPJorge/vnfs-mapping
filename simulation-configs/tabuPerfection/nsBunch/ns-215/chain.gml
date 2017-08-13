graph [
  node [
    id 0
    label 1
    disk 6
    cpu 2
    memory 7
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 16
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 6
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 5
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 4
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 4
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 37
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 51
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 27
  ]
  edge [
    source 0
    target 3
    delay 31
    bw 54
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 93
  ]
  edge [
    source 2
    target 5
    delay 28
    bw 85
  ]
]
