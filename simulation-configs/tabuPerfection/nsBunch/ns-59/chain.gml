graph [
  node [
    id 0
    label 1
    disk 2
    cpu 4
    memory 6
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 12
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 3
    memory 7
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 1
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 3
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 1
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 187
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 75
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 106
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 145
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 163
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 85
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 74
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 51
  ]
]
