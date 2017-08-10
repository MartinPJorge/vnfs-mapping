graph [
  node [
    id 0
    label 1
    disk 4
    cpu 4
    memory 13
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 14
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 13
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 3
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 1
    memory 3
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 4
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 118
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 68
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 79
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 80
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 165
  ]
  edge [
    source 2
    target 5
    delay 25
    bw 118
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 197
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 153
  ]
]
