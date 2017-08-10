graph [
  node [
    id 0
    label 1
    disk 8
    cpu 2
    memory 1
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 3
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 14
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 2
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 4
    memory 14
  ]
  node [
    id 5
    label 6
    disk 9
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
    delay 26
    bw 94
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 162
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 54
  ]
  edge [
    source 0
    target 3
    delay 34
    bw 85
  ]
  edge [
    source 1
    target 5
    delay 28
    bw 131
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 81
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 160
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 141
  ]
]
