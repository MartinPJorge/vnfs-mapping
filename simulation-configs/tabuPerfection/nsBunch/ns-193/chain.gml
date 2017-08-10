graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 16
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 10
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 4
    memory 9
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 1
    memory 8
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
    delay 35
    bw 119
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 126
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 184
  ]
  edge [
    source 1
    target 3
    delay 31
    bw 156
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 106
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
    delay 26
    bw 84
  ]
]
