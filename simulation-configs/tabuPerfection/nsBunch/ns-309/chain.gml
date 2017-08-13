graph [
  node [
    id 0
    label 1
    disk 4
    cpu 4
    memory 2
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 3
    memory 8
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 7
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 1
    memory 10
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 1
    memory 15
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 23
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 55
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 37
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 46
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 28
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 91
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 100
  ]
]
