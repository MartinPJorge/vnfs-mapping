graph [
  node [
    id 0
    label 1
    disk 4
    cpu 2
    memory 8
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 2
    memory 11
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 13
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 3
    memory 8
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 3
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 98
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 95
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 69
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 36
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 59
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 37
  ]
]
