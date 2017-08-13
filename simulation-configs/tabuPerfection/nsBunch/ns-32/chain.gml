graph [
  node [
    id 0
    label 1
    disk 4
    cpu 3
    memory 6
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 3
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 16
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 8
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 4
    memory 15
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 2
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 77
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 89
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 78
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 28
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 48
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 65
  ]
]
