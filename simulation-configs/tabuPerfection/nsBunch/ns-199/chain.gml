graph [
  node [
    id 0
    label 1
    disk 10
    cpu 2
    memory 4
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 13
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 1
    memory 6
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 2
    memory 15
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 1
    memory 15
  ]
  node [
    id 5
    label 6
    disk 1
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
    delay 29
    bw 23
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 43
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 94
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 71
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 31
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 78
  ]
]
