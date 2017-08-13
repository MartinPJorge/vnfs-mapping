graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 16
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 15
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 14
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 2
    memory 2
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 1
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 2
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 97
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 186
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 177
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 106
  ]
  edge [
    source 1
    target 5
    delay 25
    bw 57
  ]
  edge [
    source 2
    target 5
    delay 26
    bw 110
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 131
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 182
  ]
]
