graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 14
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 1
    memory 9
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 5
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 2
    memory 11
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 9
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 1
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 29
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 95
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 99
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 50
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 28
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 64
  ]
]
