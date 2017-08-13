graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 6
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 14
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 2
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 4
    memory 11
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 6
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 1
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 45
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 61
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 33
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 95
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 49
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 36
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 42
  ]
]
