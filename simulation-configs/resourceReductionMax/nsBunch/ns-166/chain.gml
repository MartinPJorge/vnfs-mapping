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
    disk 10
    cpu 1
    memory 12
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 4
    memory 10
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 3
    memory 11
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 4
    memory 11
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 4
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 65
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 173
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 183
  ]
  edge [
    source 0
    target 3
    delay 30
    bw 125
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 65
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 173
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 155
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 113
  ]
]
