graph [
  node [
    id 0
    label 1
    disk 5
    cpu 1
    memory 1
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 1
    memory 14
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 2
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 4
    memory 12
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 3
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 197
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 128
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 174
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 191
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 190
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 62
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 88
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 154
  ]
]