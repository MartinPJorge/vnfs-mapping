graph [
  node [
    id 0
    label 1
    disk 9
    cpu 2
    memory 2
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 1
    memory 8
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 10
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 10
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 7
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 1
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 59
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 41
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 43
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 48
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 85
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 39
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 35
  ]
]
