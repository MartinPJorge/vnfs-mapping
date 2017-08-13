graph [
  node [
    id 0
    label 1
    disk 3
    cpu 3
    memory 8
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 13
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 1
    memory 9
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 15
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 1
    memory 16
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 3
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 89
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 37
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 70
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 45
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 55
  ]
  edge [
    source 2
    target 5
    delay 25
    bw 70
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 24
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 28
  ]
]
