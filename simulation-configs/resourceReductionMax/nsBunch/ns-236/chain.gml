graph [
  node [
    id 0
    label 1
    disk 2
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 12
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 15
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 1
    memory 8
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 4
    memory 15
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 3
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 186
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 75
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 108
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 104
  ]
  edge [
    source 1
    target 5
    delay 33
    bw 57
  ]
  edge [
    source 2
    target 5
    delay 28
    bw 154
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 194
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 168
  ]
]
