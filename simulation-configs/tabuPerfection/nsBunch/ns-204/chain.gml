graph [
  node [
    id 0
    label 1
    disk 1
    cpu 4
    memory 7
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 13
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 5
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 3
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 6
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 60
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 121
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 71
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 137
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 107
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 104
  ]
]
