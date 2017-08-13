graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 12
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 6
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 1
    memory 2
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 3
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 4
    memory 11
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 3
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 70
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 118
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 109
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 193
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 151
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 187
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 80
  ]
]
