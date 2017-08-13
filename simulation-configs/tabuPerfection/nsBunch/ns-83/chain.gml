graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 16
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 4
    memory 1
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 12
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 1
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 2
    memory 1
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 2
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 58
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 55
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 92
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 63
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 70
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 55
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 55
  ]
]
