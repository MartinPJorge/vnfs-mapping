graph [
  node [
    id 0
    label 1
    disk 7
    cpu 2
    memory 2
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 2
    memory 2
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 7
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 11
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 4
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 91
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 41
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 47
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 62
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 33
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 64
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 85
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 50
  ]
]
