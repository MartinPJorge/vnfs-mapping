graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 10
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 9
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 2
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 7
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 1
    memory 11
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 1
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 78
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 118
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 117
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 162
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 72
  ]
  edge [
    source 3
    target 5
    delay 33
    bw 142
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 133
  ]
]
