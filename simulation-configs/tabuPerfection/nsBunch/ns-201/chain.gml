graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 14
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 2
    memory 4
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 15
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 2
    memory 15
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 2
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 26
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 56
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 20
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 33
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 21
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 32
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 23
  ]
]
