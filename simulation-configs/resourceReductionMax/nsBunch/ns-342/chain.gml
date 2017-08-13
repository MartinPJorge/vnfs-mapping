graph [
  node [
    id 0
    label 1
    disk 10
    cpu 2
    memory 7
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 2
    memory 14
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 1
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 3
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 11
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 4
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 173
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 84
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 136
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 184
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 180
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 54
  ]
]
