graph [
  node [
    id 0
    label 1
    disk 1
    cpu 4
    memory 16
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 15
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 13
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 4
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 15
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 3
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 143
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 178
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 195
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 97
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 95
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 200
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 113
  ]
]
