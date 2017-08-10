graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 8
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 6
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 3
    memory 11
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 2
    memory 4
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 3
    memory 5
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 1
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
    bw 115
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 80
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 190
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 176
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 184
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 66
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 140
  ]
]
