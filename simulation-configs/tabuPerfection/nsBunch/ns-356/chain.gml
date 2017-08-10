graph [
  node [
    id 0
    label 1
    disk 9
    cpu 4
    memory 1
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 3
    memory 13
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 4
    memory 12
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 16
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 1
    memory 9
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 2
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 152
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 102
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 63
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 190
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 69
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 86
  ]
]
