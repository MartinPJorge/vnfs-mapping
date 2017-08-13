graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 1
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 3
    memory 2
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 15
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 2
    memory 3
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 6
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 153
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 86
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 160
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 100
  ]
  edge [
    source 1
    target 4
    delay 31
    bw 196
  ]
  edge [
    source 2
    target 5
    delay 27
    bw 186
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 62
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 195
  ]
]
