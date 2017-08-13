graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 2
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
    disk 2
    cpu 3
    memory 12
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
    disk 7
    cpu 2
    memory 14
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 30
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 65
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 95
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 59
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 97
  ]
  edge [
    source 2
    target 5
    delay 26
    bw 88
  ]
]
