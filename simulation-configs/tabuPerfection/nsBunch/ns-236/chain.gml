graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 13
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 1
    memory 15
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 2
    memory 3
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 3
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 3
    memory 15
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 1
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 118
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 122
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 197
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 166
  ]
  edge [
    source 1
    target 5
    delay 26
    bw 182
  ]
  edge [
    source 2
    target 5
    delay 35
    bw 99
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 113
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 101
  ]
]
