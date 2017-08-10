graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 8
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
    cpu 1
    memory 7
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 2
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 12
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 2
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 125
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 164
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 160
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 200
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 109
  ]
  edge [
    source 2
    target 5
    delay 33
    bw 197
  ]
]
