graph [
  node [
    id 0
    label 1
    disk 8
    cpu 4
    memory 2
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 2
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 5
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 4
    memory 10
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 2
    memory 5
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 52
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 130
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 119
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 172
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 65
  ]
  edge [
    source 2
    target 5
    delay 27
    bw 158
  ]
  edge [
    source 3
    target 5
    delay 29
    bw 168
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 145
  ]
]
