graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 9
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 4
    memory 9
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 5
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 6
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 1
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 93
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 139
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 105
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 123
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 51
  ]
  edge [
    source 2
    target 5
    delay 28
    bw 93
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 78
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 182
  ]
]
