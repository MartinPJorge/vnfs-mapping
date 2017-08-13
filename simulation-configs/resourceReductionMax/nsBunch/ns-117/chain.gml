graph [
  node [
    id 0
    label 1
    disk 7
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 1
    memory 3
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 5
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 1
    memory 8
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 1
    memory 14
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 2
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 95
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 175
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 155
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 140
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 121
  ]
  edge [
    source 2
    target 5
    delay 33
    bw 192
  ]
]
