graph [
  node [
    id 0
    label 1
    disk 1
    cpu 1
    memory 10
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 6
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 2
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 1
    memory 16
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 2
    memory 11
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 4
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 95
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 99
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 46
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 26
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 41
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 91
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 22
  ]
]
