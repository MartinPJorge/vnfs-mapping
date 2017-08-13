graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 4
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 3
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 2
    memory 9
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 3
    memory 5
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 5
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 4
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 57
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 88
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 22
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 88
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 95
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 73
  ]
]
