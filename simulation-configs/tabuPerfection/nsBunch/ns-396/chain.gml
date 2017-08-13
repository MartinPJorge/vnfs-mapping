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
    disk 4
    cpu 2
    memory 7
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 3
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 4
    memory 16
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 6
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 1
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 41
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 47
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 43
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 60
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 55
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 21
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 50
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 70
  ]
]
