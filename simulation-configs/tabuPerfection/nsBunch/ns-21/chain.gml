graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 2
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 4
    memory 13
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 2
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
    disk 4
    cpu 1
    memory 9
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 4
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 198
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 98
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 128
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 109
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 140
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 197
  ]
]