graph [
  node [
    id 0
    label 1
    disk 2
    cpu 2
    memory 15
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 3
    memory 3
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 4
    memory 3
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 2
    memory 8
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 4
    memory 15
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 78
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 90
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 65
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 100
  ]
  edge [
    source 1
    target 5
    delay 31
    bw 61
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 56
  ]
]
