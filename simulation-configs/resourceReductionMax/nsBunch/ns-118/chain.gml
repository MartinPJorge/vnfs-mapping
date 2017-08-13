graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 2
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 14
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 15
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 8
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 9
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 2
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 68
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 106
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 51
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 51
  ]
  edge [
    source 3
    target 4
    delay 33
    bw 122
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 192
  ]
]
