graph [
  node [
    id 0
    label 1
    disk 1
    cpu 3
    memory 4
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 10
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 2
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 2
    memory 11
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 1
    memory 14
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 1
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 81
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 180
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 106
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 172
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 164
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 69
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 93
  ]
]
