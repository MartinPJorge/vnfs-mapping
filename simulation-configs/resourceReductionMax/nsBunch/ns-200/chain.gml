graph [
  node [
    id 0
    label 1
    disk 5
    cpu 4
    memory 8
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 5
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 12
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 9
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 4
    memory 9
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 1
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 105
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 188
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 61
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 129
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 181
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 116
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 161
  ]
]
