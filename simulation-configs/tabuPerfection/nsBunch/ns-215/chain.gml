graph [
  node [
    id 0
    label 1
    disk 2
    cpu 3
    memory 13
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 3
    memory 7
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 16
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 1
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 1
    memory 5
  ]
  node [
    id 5
    label 6
    disk 6
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
    delay 31
    bw 80
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 64
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 60
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 38
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 28
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 93
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 84
  ]
]
