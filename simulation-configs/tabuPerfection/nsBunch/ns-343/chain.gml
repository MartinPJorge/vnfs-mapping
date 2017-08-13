graph [
  node [
    id 0
    label 1
    disk 2
    cpu 4
    memory 15
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 4
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 1
    memory 2
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 1
    memory 2
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 4
    memory 4
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 1
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 55
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 75
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 50
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 98
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 93
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 45
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 71
  ]
]
