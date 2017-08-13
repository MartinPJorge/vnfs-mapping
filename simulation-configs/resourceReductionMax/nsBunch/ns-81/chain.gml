graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 11
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 1
    memory 5
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 3
    memory 2
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 4
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 1
    memory 2
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 3
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 136
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 66
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 124
  ]
  edge [
    source 1
    target 3
    delay 31
    bw 183
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 165
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 155
  ]
]
