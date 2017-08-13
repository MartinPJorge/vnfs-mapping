graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 11
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 3
    memory 3
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 4
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 10
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 1
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 60
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 171
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 139
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 154
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 65
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 141
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 168
  ]
]
