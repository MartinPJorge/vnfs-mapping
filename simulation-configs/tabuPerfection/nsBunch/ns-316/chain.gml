graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 2
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 4
    memory 16
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 7
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 4
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 1
    memory 6
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 4
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 29
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 64
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 45
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 26
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 88
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 27
  ]
]
