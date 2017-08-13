graph [
  node [
    id 0
    label 1
    disk 7
    cpu 2
    memory 10
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 6
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 1
    memory 12
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 12
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 9
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 20
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 99
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 95
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 86
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 67
  ]
  edge [
    source 2
    target 5
    delay 28
    bw 47
  ]
]
