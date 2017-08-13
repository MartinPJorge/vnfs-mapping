graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 9
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 2
    memory 3
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 1
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 16
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 7
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 3
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 100
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 44
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 23
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 80
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 24
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 48
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 91
  ]
]
