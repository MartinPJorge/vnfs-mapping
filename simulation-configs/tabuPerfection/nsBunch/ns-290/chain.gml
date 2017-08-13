graph [
  node [
    id 0
    label 1
    disk 4
    cpu 2
    memory 4
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 1
    memory 5
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 1
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 15
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 10
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 4
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
    bw 98
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 88
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 49
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 31
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 54
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 35
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 66
  ]
]
