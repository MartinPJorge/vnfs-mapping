graph [
  node [
    id 0
    label 1
    disk 4
    cpu 4
    memory 15
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 6
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 10
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 1
    memory 11
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 15
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 1
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
    bw 109
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 94
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 78
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 182
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 86
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 178
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 109
  ]
]