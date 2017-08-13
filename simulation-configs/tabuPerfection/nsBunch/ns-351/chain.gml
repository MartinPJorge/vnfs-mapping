graph [
  node [
    id 0
    label 1
    disk 4
    cpu 2
    memory 11
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 8
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 13
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 4
    memory 16
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 2
    memory 11
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 94
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 95
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 54
  ]
  edge [
    source 0
    target 3
    delay 30
    bw 71
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 32
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 74
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 59
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 57
  ]
]
