graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 14
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 10
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 13
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 3
    memory 12
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 16
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 126
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 181
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 186
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 77
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 59
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 174
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 84
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 69
  ]
]
