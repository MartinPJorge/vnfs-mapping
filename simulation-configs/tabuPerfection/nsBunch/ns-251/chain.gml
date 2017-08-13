graph [
  node [
    id 0
    label 1
    disk 9
    cpu 4
    memory 5
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 1
    memory 12
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 4
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 2
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 2
    memory 8
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 4
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 59
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 100
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 100
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 63
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 94
  ]
  edge [
    source 2
    target 5
    delay 27
    bw 43
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 80
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 57
  ]
]
