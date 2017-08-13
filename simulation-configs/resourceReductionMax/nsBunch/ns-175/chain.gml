graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 7
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 2
    memory 13
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 11
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 14
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 4
    memory 2
  ]
  node [
    id 5
    label 6
    disk 4
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
    delay 32
    bw 62
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 83
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 119
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 152
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 145
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 84
  ]
]
