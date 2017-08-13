graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 13
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 5
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 1
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 10
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 3
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 27
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 43
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 84
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 46
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 91
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 98
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 100
  ]
]
