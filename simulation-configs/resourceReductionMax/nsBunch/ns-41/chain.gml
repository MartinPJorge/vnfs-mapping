graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 14
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 1
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 14
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 2
    memory 11
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 2
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 182
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 95
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 129
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 158
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 78
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 127
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 113
  ]
]
