graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 12
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 4
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 2
    memory 14
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 12
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 11
  ]
  node [
    id 5
    label 6
    disk 2
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
    delay 34
    bw 90
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 180
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 156
  ]
  edge [
    source 2
    target 3
    delay 29
    bw 85
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 173
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 67
  ]
]
