graph [
  node [
    id 0
    label 1
    disk 5
    cpu 4
    memory 10
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 8
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 1
    memory 15
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 2
    memory 5
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
    disk 8
    cpu 2
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 33
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 48
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 45
  ]
  edge [
    source 0
    target 3
    delay 29
    bw 27
  ]
  edge [
    source 1
    target 5
    delay 34
    bw 33
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 72
  ]
]
