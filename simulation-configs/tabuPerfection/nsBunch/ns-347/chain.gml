graph [
  node [
    id 0
    label 1
    disk 9
    cpu 2
    memory 4
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 6
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 11
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 2
    memory 2
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 4
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 1
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 183
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 117
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 178
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 106
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 159
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 153
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 89
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 114
  ]
]