graph [
  node [
    id 0
    label 1
    disk 9
    cpu 1
    memory 16
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 8
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 2
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 8
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 1
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
    bw 163
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 65
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 174
  ]
  edge [
    source 1
    target 5
    delay 35
    bw 161
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 198
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 64
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 70
  ]
]
