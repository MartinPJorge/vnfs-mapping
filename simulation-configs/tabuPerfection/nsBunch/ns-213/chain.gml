graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 9
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 14
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 9
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 2
    memory 10
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 13
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 98
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 62
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 61
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 80
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 35
  ]
  edge [
    source 2
    target 5
    delay 26
    bw 35
  ]
]
