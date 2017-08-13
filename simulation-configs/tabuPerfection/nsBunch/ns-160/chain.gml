graph [
  node [
    id 0
    label 1
    disk 9
    cpu 4
    memory 10
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 7
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 4
    memory 12
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 2
    memory 8
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 2
    memory 7
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 98
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 111
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 55
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 76
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 134
  ]
  edge [
    source 2
    target 5
    delay 33
    bw 177
  ]
]
