graph [
  node [
    id 0
    label 1
    disk 9
    cpu 4
    memory 4
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 1
    memory 6
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 4
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 7
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 11
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 4
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 162
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 124
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 174
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 174
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 199
  ]
  edge [
    source 2
    target 5
    delay 27
    bw 69
  ]
]
