graph [
  node [
    id 0
    label 1
    disk 1
    cpu 1
    memory 7
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 14
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 1
    memory 2
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 13
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 4
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 70
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 84
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 97
  ]
  edge [
    source 0
    target 3
    delay 34
    bw 54
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 30
  ]
  edge [
    source 2
    target 5
    delay 27
    bw 39
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 70
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 41
  ]
]
