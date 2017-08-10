graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 4
    memory 13
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 3
    memory 8
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 13
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 1
    memory 16
  ]
  node [
    id 5
    label 6
    disk 4
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
    delay 27
    bw 164
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 139
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 79
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 106
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 155
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 54
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 151
  ]
]