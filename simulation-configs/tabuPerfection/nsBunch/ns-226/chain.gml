graph [
  node [
    id 0
    label 1
    disk 1
    cpu 3
    memory 1
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 2
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 1
    memory 13
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 14
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 1
    memory 5
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 3
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 120
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 198
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 195
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 184
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 107
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 53
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 173
  ]
]
