graph [
  node [
    id 0
    label 1
    disk 8
    cpu 2
    memory 10
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 14
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 2
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 4
    memory 8
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 1
    memory 13
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 2
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 113
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 75
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 90
  ]
  edge [
    source 1
    target 3
    delay 31
    bw 80
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 50
  ]
  edge [
    source 2
    target 5
    delay 33
    bw 83
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 63
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 158
  ]
]
