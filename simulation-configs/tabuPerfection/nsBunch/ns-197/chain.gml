graph [
  node [
    id 0
    label 1
    disk 4
    cpu 2
    memory 13
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 2
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 2
    memory 11
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
    disk 8
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 4
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 28
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 34
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 35
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 57
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 45
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 94
  ]
]
