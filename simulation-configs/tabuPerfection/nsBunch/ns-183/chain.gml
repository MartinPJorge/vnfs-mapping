graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 12
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 2
    memory 6
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 1
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 2
    memory 2
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 1
    memory 16
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 2
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
    bw 148
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 64
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 104
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 83
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 86
  ]
  edge [
    source 2
    target 5
    delay 33
    bw 197
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 97
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 69
  ]
]
