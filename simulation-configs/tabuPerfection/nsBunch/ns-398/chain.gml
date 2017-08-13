graph [
  node [
    id 0
    label 1
    disk 8
    cpu 4
    memory 5
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 14
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 13
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 15
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 9
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 1
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 26
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 92
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 75
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 80
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 42
  ]
  edge [
    source 2
    target 5
    delay 35
    bw 88
  ]
]
