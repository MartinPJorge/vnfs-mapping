graph [
  node [
    id 0
    label 1
    disk 1
    cpu 3
    memory 6
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 4
    memory 15
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 16
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 5
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 14
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 3
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 48
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 70
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 67
  ]
  edge [
    source 0
    target 3
    delay 35
    bw 35
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 55
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 51
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 21
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 26
  ]
]
