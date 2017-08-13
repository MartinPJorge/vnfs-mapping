graph [
  node [
    id 0
    label 1
    disk 7
    cpu 2
    memory 13
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 8
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 4
    memory 10
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 6
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 5
  ]
  node [
    id 5
    label 6
    disk 5
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
    delay 26
    bw 98
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 59
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 59
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 63
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 33
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 37
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 29
  ]
]
