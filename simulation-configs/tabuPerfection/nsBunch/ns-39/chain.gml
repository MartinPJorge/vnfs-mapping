graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 7
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 7
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 12
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 2
    memory 16
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 183
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 56
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 199
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 194
  ]
  edge [
    source 1
    target 4
    delay 31
    bw 189
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 82
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 182
  ]
]
