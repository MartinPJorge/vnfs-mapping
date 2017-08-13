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
    disk 6
    cpu 4
    memory 2
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 2
    memory 10
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 1
    memory 4
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 6
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 2
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 96
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 88
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 34
  ]
  edge [
    source 0
    target 3
    delay 29
    bw 75
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 50
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 41
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 85
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 94
  ]
]
