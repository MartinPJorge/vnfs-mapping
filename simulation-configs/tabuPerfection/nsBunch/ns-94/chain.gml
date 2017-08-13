graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 15
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 1
    memory 1
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 15
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 1
    memory 7
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 3
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
    bw 72
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 64
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 46
  ]
  edge [
    source 2
    target 3
    delay 29
    bw 84
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 51
  ]
  edge [
    source 3
    target 5
    delay 33
    bw 67
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 60
  ]
]
