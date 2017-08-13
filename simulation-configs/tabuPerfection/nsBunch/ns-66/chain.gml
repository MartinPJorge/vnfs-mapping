graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 14
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 4
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 4
    memory 8
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 10
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 9
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 4
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 50
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 94
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 52
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 29
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 42
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 20
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 94
  ]
]
