graph [
  node [
    id 0
    label 1
    disk 2
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 1
    memory 9
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 1
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 5
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 11
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 84
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 88
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 187
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 115
  ]
  edge [
    source 1
    target 5
    delay 27
    bw 95
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 159
  ]
]
