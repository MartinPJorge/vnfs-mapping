graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 7
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 9
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 1
    memory 7
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 4
    memory 10
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 9
  ]
  node [
    id 5
    label 6
    disk 4
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
    delay 29
    bw 82
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 49
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 46
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 90
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 38
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 83
  ]
]
