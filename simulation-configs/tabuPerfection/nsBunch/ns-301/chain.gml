graph [
  node [
    id 0
    label 1
    disk 4
    cpu 4
    memory 5
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 8
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 4
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 2
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 4
    memory 4
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 3
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 70
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 78
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 193
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 99
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 138
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 126
  ]
  edge [
    source 3
    target 5
    delay 33
    bw 66
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 57
  ]
]
