graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 5
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 2
    memory 16
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 3
    memory 12
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
    disk 3
    cpu 3
    memory 12
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 3
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 181
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 113
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 130
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 184
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 137
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 156
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 124
  ]
]