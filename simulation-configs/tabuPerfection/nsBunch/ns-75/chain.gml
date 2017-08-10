graph [
  node [
    id 0
    label 1
    disk 4
    cpu 4
    memory 12
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 10
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 1
    memory 16
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 14
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 1
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 61
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 173
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 155
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 176
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 198
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 198
  ]
]