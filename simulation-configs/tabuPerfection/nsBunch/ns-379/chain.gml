graph [
  node [
    id 0
    label 1
    disk 9
    cpu 1
    memory 12
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 4
    memory 16
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 7
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 4
    memory 9
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 14
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 4
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 95
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 134
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 148
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 60
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 55
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 183
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 54
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 130
  ]
]
