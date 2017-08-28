graph [
  node [
    id 0
    label 1
    disk 2
    cpu 1
    memory 7
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 4
    memory 2
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 2
    memory 11
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 3
    memory 6
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 4
    memory 9
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 2
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 69
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 174
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 141
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 52
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 72
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 139
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 185
  ]
]
