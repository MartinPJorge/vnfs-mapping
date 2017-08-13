graph [
  node [
    id 0
    label 1
    disk 7
    cpu 1
    memory 13
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 4
    memory 7
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 4
    memory 1
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 1
    memory 2
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 4
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 50
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 46
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 96
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 20
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 50
  ]
  edge [
    source 2
    target 5
    delay 28
    bw 72
  ]
]
