graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 4
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 14
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 2
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 14
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 4
    memory 2
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 3
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 196
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 84
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 175
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 61
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 166
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 160
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 58
  ]
]
