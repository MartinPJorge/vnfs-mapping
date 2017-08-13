graph [
  node [
    id 0
    label 1
    disk 4
    cpu 2
    memory 2
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 12
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 5
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 15
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 9
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 3
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 58
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 149
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 105
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 169
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 152
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 192
  ]
]
