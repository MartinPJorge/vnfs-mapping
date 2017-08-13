graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 10
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 3
    memory 6
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 3
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 12
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 3
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 4
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 93
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 59
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 25
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 36
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 20
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 62
  ]
]
