graph [
  node [
    id 0
    label 1
    disk 2
    cpu 3
    memory 16
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 3
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 8
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 6
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 4
    memory 14
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 3
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 85
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 26
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 54
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 75
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 58
  ]
  edge [
    source 2
    target 5
    delay 25
    bw 48
  ]
]
