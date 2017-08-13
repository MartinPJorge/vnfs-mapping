graph [
  node [
    id 0
    label 1
    disk 4
    cpu 3
    memory 6
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 4
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 1
    memory 12
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 2
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 2
    memory 15
  ]
  node [
    id 5
    label 6
    disk 4
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
    delay 26
    bw 92
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 53
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 166
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 87
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 74
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 109
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 170
  ]
]
