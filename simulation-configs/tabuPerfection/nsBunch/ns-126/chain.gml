graph [
  node [
    id 0
    label 1
    disk 5
    cpu 1
    memory 15
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 1
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 3
    memory 16
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 3
    memory 1
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 1
    memory 2
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 2
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 127
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 174
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 65
  ]
  edge [
    source 0
    target 3
    delay 29
    bw 167
  ]
  edge [
    source 1
    target 4
    delay 31
    bw 175
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 127
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 54
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 190
  ]
]
