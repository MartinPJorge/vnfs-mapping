graph [
  node [
    id 0
    label 1
    disk 4
    cpu 4
    memory 1
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 1
    memory 9
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 3
    memory 6
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 4
    memory 7
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 3
  ]
  node [
    id 5
    label 6
    disk 10
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
    delay 33
    bw 102
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 139
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 200
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 99
  ]
  edge [
    source 2
    target 4
    delay 25
    bw 154
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 196
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 110
  ]
]
