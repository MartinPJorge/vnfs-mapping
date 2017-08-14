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
    disk 9
    cpu 3
    memory 8
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 3
    memory 7
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 3
    memory 12
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 2
    memory 16
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 72
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 192
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 164
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 194
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 100
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 114
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 59
  ]
]
