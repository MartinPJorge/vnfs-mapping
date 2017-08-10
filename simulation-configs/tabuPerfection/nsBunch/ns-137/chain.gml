graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 11
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 16
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 8
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 4
    memory 12
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 1
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 91
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 145
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 120
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 51
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 150
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 50
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 192
  ]
]
