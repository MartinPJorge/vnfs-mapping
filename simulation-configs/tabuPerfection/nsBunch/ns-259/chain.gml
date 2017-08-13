graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 1
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 1
    memory 4
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
    disk 2
    cpu 3
    memory 12
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 1
    memory 16
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 4
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 42
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 55
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 65
  ]
  edge [
    source 0
    target 3
    delay 29
    bw 42
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 91
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 40
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 92
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 24
  ]
]
