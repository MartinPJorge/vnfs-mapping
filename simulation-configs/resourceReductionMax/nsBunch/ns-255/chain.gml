graph [
  node [
    id 0
    label 1
    disk 2
    cpu 4
    memory 13
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 13
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 1
    memory 8
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 3
    memory 7
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 13
  ]
  node [
    id 5
    label 6
    disk 1
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
    bw 155
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 171
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 50
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 92
  ]
  edge [
    source 2
    target 5
    delay 33
    bw 166
  ]
  edge [
    source 3
    target 4
    delay 33
    bw 157
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 162
  ]
]
