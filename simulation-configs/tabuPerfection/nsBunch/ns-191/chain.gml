graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 13
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 4
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 1
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 2
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 3
    memory 15
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 4
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 92
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 33
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 47
  ]
  edge [
    source 2
    target 3
    delay 29
    bw 55
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 25
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 25
  ]
]
