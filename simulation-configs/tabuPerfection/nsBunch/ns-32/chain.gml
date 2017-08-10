graph [
  node [
    id 0
    label 1
    disk 7
    cpu 2
    memory 6
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 12
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 1
    memory 14
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 1
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 1
    memory 1
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 87
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 78
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 88
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 163
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 84
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 173
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 79
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 132
  ]
]
