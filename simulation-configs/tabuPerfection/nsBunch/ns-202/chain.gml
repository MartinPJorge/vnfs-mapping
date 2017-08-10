graph [
  node [
    id 0
    label 1
    disk 9
    cpu 2
    memory 10
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 13
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
    disk 9
    cpu 1
    memory 6
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 5
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 4
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 128
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 54
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 113
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 120
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 185
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 163
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 52
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 68
  ]
]
