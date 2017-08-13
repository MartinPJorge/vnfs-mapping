graph [
  node [
    id 0
    label 1
    disk 10
    cpu 1
    memory 12
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 6
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 2
    memory 16
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 2
    memory 5
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 6
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 33
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 77
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 47
  ]
  edge [
    source 2
    target 3
    delay 29
    bw 98
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 45
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 40
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 30
  ]
]
