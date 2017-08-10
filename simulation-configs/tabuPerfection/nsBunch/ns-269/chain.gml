graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 4
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 15
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 2
    memory 14
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 3
    memory 4
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 1
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 181
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 85
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 179
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 95
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 120
  ]
  edge [
    source 2
    target 5
    delay 35
    bw 85
  ]
]
