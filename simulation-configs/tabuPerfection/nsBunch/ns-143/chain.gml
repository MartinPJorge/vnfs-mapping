graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 3
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 3
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 1
    memory 6
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 15
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 10
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 4
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 80
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 190
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 65
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 176
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 109
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 98
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 73
  ]
]
