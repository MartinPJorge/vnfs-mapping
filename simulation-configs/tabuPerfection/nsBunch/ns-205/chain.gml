graph [
  node [
    id 0
    label 1
    disk 2
    cpu 1
    memory 3
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 16
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 15
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 8
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 4
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 2
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 37
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 45
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 58
  ]
  edge [
    source 0
    target 3
    delay 31
    bw 23
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 45
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 63
  ]
]
