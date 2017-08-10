graph [
  node [
    id 0
    label 1
    disk 1
    cpu 1
    memory 2
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 1
    memory 11
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 8
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 6
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 4
    memory 2
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 3
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 55
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 123
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 87
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 50
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 159
  ]
  edge [
    source 3
    target 5
    delay 29
    bw 179
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 140
  ]
]