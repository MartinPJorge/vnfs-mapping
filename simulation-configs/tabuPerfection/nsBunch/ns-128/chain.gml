graph [
  node [
    id 0
    label 1
    disk 2
    cpu 2
    memory 6
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 3
    memory 1
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 5
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 2
    memory 7
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 13
  ]
  node [
    id 5
    label 6
    disk 4
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
    delay 27
    bw 76
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 51
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 30
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 48
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 23
  ]
  edge [
    source 3
    target 4
    delay 33
    bw 84
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 27
  ]
]
