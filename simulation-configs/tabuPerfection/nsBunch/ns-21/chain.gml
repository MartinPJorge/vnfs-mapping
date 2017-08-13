graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 13
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 4
    memory 11
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 10
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 4
    memory 3
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 4
    memory 15
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 4
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 45
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 20
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 80
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 87
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 59
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 27
  ]
]
