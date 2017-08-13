graph [
  node [
    id 0
    label 1
    disk 2
    cpu 4
    memory 14
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 11
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 14
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 3
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 1
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 59
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 58
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 179
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 152
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 61
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 187
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 183
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 50
  ]
]
