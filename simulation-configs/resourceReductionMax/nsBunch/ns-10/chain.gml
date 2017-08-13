graph [
  node [
    id 0
    label 1
    disk 9
    cpu 2
    memory 8
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 11
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 6
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 4
    memory 12
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 1
    memory 4
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 4
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 113
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 169
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 62
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 199
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 105
  ]
  edge [
    source 2
    target 5
    delay 33
    bw 197
  ]
]
