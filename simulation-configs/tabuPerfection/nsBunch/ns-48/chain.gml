graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 1
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 1
    memory 1
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 2
    memory 10
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 12
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 3
    memory 5
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 197
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 90
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 66
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 97
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
    bw 70
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 173
  ]
]
