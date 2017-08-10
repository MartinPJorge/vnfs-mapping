graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 14
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 4
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 4
    memory 4
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 4
    memory 3
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 4
    memory 3
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 3
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 83
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 89
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 85
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 105
  ]
  edge [
    source 1
    target 5
    delay 34
    bw 157
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 163
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 147
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 123
  ]
]
