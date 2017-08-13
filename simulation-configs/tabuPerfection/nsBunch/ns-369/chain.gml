graph [
  node [
    id 0
    label 1
    disk 5
    cpu 1
    memory 14
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 12
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 4
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 1
    memory 15
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 2
    memory 4
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 3
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 66
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 66
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 33
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 42
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 48
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 48
  ]
]
