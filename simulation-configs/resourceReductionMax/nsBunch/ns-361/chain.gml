graph [
  node [
    id 0
    label 1
    disk 8
    cpu 2
    memory 6
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 15
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 3
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 6
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 3
    memory 1
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 171
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 126
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
    delay 35
    bw 171
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 193
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 194
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 152
  ]
]
