graph [
  node [
    id 0
    label 1
    disk 7
    cpu 1
    memory 11
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 13
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 4
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 2
    memory 3
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 7
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 1
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 197
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 153
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 105
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 191
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 52
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 149
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 105
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 196
  ]
]
