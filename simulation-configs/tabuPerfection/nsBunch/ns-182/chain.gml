graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 13
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 2
    memory 14
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 16
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 7
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 14
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 2
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 80
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 98
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 100
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 32
  ]
  edge [
    source 2
    target 3
    delay 31
    bw 54
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 35
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 84
  ]
]
