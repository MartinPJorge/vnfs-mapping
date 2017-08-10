graph [
  node [
    id 0
    label 1
    disk 1
    cpu 3
    memory 5
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 9
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 3
    memory 12
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 4
    memory 15
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 3
    memory 11
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 2
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 161
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 97
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 133
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 141
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 95
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 111
  ]
]
