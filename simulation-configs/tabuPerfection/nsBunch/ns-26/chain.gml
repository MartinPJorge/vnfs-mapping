graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 7
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 14
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 3
    memory 15
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 12
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 3
    memory 2
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 4
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 97
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 45
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 68
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 48
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 46
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 45
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 29
  ]
]
