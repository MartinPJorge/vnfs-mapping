graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 6
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 3
    memory 2
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 1
    memory 15
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 5
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 1
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 37
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 65
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 29
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 34
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 73
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 83
  ]
]
