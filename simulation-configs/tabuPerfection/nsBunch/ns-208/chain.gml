graph [
  node [
    id 0
    label 1
    disk 8
    cpu 1
    memory 3
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 6
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 3
    memory 11
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 4
    memory 1
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 3
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 59
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 34
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 46
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 22
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 20
  ]
  edge [
    source 2
    target 5
    delay 25
    bw 54
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 24
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 94
  ]
]
