graph [
  node [
    id 0
    label 1
    disk 8
    cpu 1
    memory 4
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 4
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 1
    memory 13
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 14
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 10
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 1
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
    bw 49
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 38
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 27
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 43
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 46
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 41
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 74
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 75
  ]
]
