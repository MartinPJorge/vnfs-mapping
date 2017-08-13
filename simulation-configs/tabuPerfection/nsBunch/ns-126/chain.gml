graph [
  node [
    id 0
    label 1
    disk 4
    cpu 3
    memory 11
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 3
    memory 4
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 6
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 4
    memory 10
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 1
    memory 5
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 41
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 41
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 37
  ]
  edge [
    source 0
    target 3
    delay 29
    bw 23
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 57
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 41
  ]
]
