graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 14
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 1
    memory 14
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 3
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 2
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 14
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 1
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 192
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 134
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 168
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 51
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 54
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 144
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 130
  ]
]
