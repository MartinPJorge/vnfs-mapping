graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 9
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 7
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 4
    memory 14
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 4
    memory 14
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 1
    memory 16
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 4
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 168
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 95
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 67
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 153
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 106
  ]
  edge [
    source 2
    target 5
    delay 28
    bw 129
  ]
]
