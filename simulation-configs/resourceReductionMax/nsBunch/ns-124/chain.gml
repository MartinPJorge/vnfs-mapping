graph [
  node [
    id 0
    label 1
    disk 8
    cpu 1
    memory 16
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 4
    memory 8
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 3
    memory 8
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
    disk 4
    cpu 1
    memory 5
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 4
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 111
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 118
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 90
  ]
  edge [
    source 0
    target 3
    delay 34
    bw 74
  ]
  edge [
    source 1
    target 5
    delay 33
    bw 195
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 87
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 55
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 80
  ]
]
