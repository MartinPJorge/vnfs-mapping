graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 3
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 6
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 12
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 6
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 2
    memory 10
  ]
  node [
    id 5
    label 6
    disk 3
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
    delay 31
    bw 80
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 43
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 76
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 57
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 98
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 70
  ]
]
