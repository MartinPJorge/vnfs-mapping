graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 1
    memory 14
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 2
    memory 13
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 7
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 3
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 190
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 189
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 199
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 75
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 51
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 152
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 108
  ]
]
