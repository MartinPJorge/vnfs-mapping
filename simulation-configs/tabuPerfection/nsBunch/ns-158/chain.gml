graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 10
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 1
    memory 2
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 3
    memory 6
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 3
    memory 4
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 15
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 2
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 100
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 136
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 54
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 58
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 102
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 182
  ]
  edge [
    source 3
    target 5
    delay 33
    bw 129
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 147
  ]
]