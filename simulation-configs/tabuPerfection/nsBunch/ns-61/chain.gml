graph [
  node [
    id 0
    label 1
    disk 9
    cpu 1
    memory 11
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 1
    memory 8
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 1
    memory 1
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 2
    memory 12
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 1
    memory 12
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 3
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 190
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 132
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 168
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 176
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 131
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 73
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 184
  ]
]
