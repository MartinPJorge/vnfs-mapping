graph [
  node [
    id 0
    label 1
    disk 7
    cpu 1
    memory 11
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 1
    memory 4
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 1
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 1
    memory 16
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 1
    memory 15
  ]
  node [
    id 5
    label 6
    disk 5
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
    delay 33
    bw 147
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 175
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 98
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 86
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 110
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 127
  ]
]
