graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 6
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 3
    memory 16
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 4
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 10
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 10
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 105
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 175
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 138
  ]
  edge [
    source 2
    target 3
    delay 29
    bw 158
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 155
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 151
  ]
]
