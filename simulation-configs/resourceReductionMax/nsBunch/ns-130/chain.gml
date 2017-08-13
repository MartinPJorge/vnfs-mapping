graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 2
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 10
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 2
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 12
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 3
    memory 12
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 2
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 170
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 189
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 109
  ]
  edge [
    source 2
    target 3
    delay 31
    bw 123
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 200
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 177
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 190
  ]
]
