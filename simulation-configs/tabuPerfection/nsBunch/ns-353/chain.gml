graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 5
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 13
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 3
    memory 14
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 1
    memory 12
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 14
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 45
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 69
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 85
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 41
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 100
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 36
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 71
  ]
]
