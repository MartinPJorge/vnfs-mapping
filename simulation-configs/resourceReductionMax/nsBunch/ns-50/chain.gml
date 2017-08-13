graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 16
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 1
    memory 8
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 1
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 2
    memory 4
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 169
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 128
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 156
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 84
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 75
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 168
  ]
]
