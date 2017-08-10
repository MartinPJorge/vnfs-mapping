graph [
  node [
    id 0
    label 1
    disk 8
    cpu 4
    memory 4
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 1
    memory 4
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 2
    memory 3
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 4
    memory 8
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 15
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 2
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 169
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 77
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 52
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 51
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 95
  ]
  edge [
    source 3
    target 5
    delay 33
    bw 162
  ]
]
