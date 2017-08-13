graph [
  node [
    id 0
    label 1
    disk 1
    cpu 1
    memory 15
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 1
    memory 12
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 10
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 10
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 5
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 1
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 76
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 87
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 67
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 74
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 50
  ]
  edge [
    source 3
    target 5
    delay 33
    bw 41
  ]
]
