graph [
  node [
    id 0
    label 1
    disk 8
    cpu 1
    memory 12
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 1
    memory 5
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 1
    memory 8
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 14
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 1
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 2
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 22
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 81
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 33
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 35
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 79
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 44
  ]
]
