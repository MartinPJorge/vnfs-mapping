graph [
  node [
    id 0
    label 1
    disk 9
    cpu 1
    memory 16
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 1
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 6
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 1
    memory 13
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 14
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 1
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 155
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 137
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 197
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 100
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 190
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 177
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
    delay 34
    bw 118
  ]
]
