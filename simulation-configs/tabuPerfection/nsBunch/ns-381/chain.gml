graph [
  node [
    id 0
    label 1
    disk 1
    cpu 2
    memory 4
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 8
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 4
    memory 14
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 2
    memory 15
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 1
    memory 12
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
    bw 43
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 55
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 41
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 76
  ]
  edge [
    source 2
    target 3
    delay 29
    bw 28
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 30
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 85
  ]
]
