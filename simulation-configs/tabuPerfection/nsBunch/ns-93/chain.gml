graph [
  node [
    id 0
    label 1
    disk 5
    cpu 4
    memory 4
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 3
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 6
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 3
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 16
  ]
  node [
    id 5
    label 6
    disk 9
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
    bw 42
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 22
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 23
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 32
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 30
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 27
  ]
]
