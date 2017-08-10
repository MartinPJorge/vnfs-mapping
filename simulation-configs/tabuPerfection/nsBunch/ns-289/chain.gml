graph [
  node [
    id 0
    label 1
    disk 7
    cpu 1
    memory 3
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 2
    memory 9
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 1
    memory 2
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 2
    memory 6
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 3
    memory 11
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 2
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 87
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 125
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 84
  ]
  edge [
    source 0
    target 3
    delay 35
    bw 117
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 106
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 56
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 156
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 132
  ]
]
