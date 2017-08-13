graph [
  node [
    id 0
    label 1
    disk 8
    cpu 1
    memory 6
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 11
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 1
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 2
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 11
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 191
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 141
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 79
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 163
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 172
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 199
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 197
  ]
]
