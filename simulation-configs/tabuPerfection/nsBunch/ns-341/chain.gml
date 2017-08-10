graph [
  node [
    id 0
    label 1
    disk 5
    cpu 1
    memory 14
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 6
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 2
    memory 16
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 1
    memory 12
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 6
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 1
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 172
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 142
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 97
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 131
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 79
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 74
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 111
  ]
]
