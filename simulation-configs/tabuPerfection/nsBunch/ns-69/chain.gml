graph [
  node [
    id 0
    label 1
    disk 8
    cpu 4
    memory 11
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 1
    memory 16
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 9
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 10
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 2
    memory 4
  ]
  node [
    id 5
    label 6
    disk 3
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
    delay 28
    bw 68
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 24
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 49
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 34
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 46
  ]
  edge [
    source 2
    target 5
    delay 25
    bw 97
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 26
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 30
  ]
]
