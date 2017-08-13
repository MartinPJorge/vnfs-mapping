graph [
  node [
    id 0
    label 1
    disk 1
    cpu 4
    memory 8
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 1
    memory 13
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 14
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 6
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 3
    memory 3
  ]
  node [
    id 5
    label 6
    disk 2
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
    delay 29
    bw 98
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 68
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 31
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 93
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 90
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 91
  ]
]
