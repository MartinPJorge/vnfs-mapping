graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 14
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 16
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 16
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 14
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 6
  ]
  node [
    id 5
    label 6
    disk 2
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
    delay 34
    bw 92
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 60
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 79
  ]
  edge [
    source 1
    target 3
    delay 34
    bw 46
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 43
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 85
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 89
  ]
]
