graph [
  node [
    id 0
    label 1
    disk 7
    cpu 1
    memory 9
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 1
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 3
    memory 8
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 14
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 1
    memory 5
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 3
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 56
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 89
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 33
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 93
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 84
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 22
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 57
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 100
  ]
]
