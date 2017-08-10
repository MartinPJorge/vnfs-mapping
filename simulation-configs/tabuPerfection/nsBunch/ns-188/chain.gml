graph [
  node [
    id 0
    label 1
    disk 9
    cpu 1
    memory 2
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 6
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 15
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 4
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 9
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 153
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 198
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 163
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 110
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 61
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 125
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 199
  ]
]
