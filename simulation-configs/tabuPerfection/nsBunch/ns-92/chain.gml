graph [
  node [
    id 0
    label 1
    disk 9
    cpu 4
    memory 6
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 11
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 3
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 3
    memory 1
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 4
    memory 11
  ]
  node [
    id 5
    label 6
    disk 3
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
    bw 165
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 51
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 139
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 50
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 113
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 108
  ]
]
