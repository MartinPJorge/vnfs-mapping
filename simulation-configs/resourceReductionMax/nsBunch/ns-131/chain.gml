graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 14
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 2
    memory 5
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 15
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 3
    memory 15
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 1
    memory 13
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 109
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 184
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 175
  ]
  edge [
    source 0
    target 3
    delay 31
    bw 50
  ]
  edge [
    source 1
    target 5
    delay 27
    bw 111
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 117
  ]
  edge [
    source 3
    target 4
    delay 33
    bw 133
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 169
  ]
]
