graph [
  node [
    id 0
    label 1
    disk 10
    cpu 1
    memory 7
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 13
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 2
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 9
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 8
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 3
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 166
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 60
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 94
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 105
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 165
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 124
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 120
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 101
  ]
]
