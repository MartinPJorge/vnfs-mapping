graph [
  node [
    id 0
    label 1
    disk 1
    cpu 3
    memory 9
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 14
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 2
    memory 7
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 7
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 3
    memory 3
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 3
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 118
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 145
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 151
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 88
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 84
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 141
  ]
]
