graph [
  node [
    id 0
    label 1
    disk 4
    cpu 3
    memory 11
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 5
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 11
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 7
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 2
    memory 1
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 4
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 100
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 30
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 48
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 37
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 26
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 25
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 65
  ]
]
