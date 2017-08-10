graph [
  node [
    id 0
    label 1
    disk 2
    cpu 1
    memory 16
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 9
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 11
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 9
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 4
    memory 3
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 4
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 108
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 184
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 161
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 109
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 89
  ]
  edge [
    source 2
    target 5
    delay 26
    bw 185
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 165
  ]
]
