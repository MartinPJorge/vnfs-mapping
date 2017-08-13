graph [
  node [
    id 0
    label 1
    disk 9
    cpu 1
    memory 12
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 16
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 7
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 11
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 4
    memory 8
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 3
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 34
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 73
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 49
  ]
  edge [
    source 0
    target 3
    delay 29
    bw 98
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 92
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 43
  ]
]
