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
    disk 3
    cpu 2
    memory 1
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 9
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 1
    memory 3
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 4
    memory 12
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 2
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 36
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 22
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 80
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 22
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 31
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 79
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 99
  ]
]
