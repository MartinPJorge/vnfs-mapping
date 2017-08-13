graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 16
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 9
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 2
    memory 1
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 4
    memory 10
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 15
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 3
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 46
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 28
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 66
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 24
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 20
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 100
  ]
]
