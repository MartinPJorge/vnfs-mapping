graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 10
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 2
    memory 3
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 12
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 3
    memory 14
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 14
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 3
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 144
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 159
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 197
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 178
  ]
  edge [
    source 2
    target 3
    delay 29
    bw 151
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 149
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 90
  ]
]
