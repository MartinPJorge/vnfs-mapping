graph [
  node [
    id 0
    label 1
    disk 6
    cpu 2
    memory 13
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 4
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 14
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 2
    memory 9
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
    disk 4
    cpu 3
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 149
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 61
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 100
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 173
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 53
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 120
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 152
  ]
]
