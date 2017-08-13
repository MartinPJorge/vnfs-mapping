graph [
  node [
    id 0
    label 1
    disk 8
    cpu 2
    memory 2
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 2
    memory 3
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 11
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 3
    memory 1
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 2
    memory 6
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 3
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 171
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 102
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 103
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 167
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 125
  ]
  edge [
    source 2
    target 5
    delay 26
    bw 66
  ]
]
