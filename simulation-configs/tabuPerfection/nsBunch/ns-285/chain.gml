graph [
  node [
    id 0
    label 1
    disk 10
    cpu 2
    memory 1
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 15
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 3
    memory 14
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 4
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 4
    memory 15
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 4
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 44
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 26
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 50
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 88
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 85
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 64
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 30
  ]
]
