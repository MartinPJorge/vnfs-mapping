graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 16
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 5
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 1
    memory 1
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 13
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 4
    memory 13
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 4
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 130
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 152
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 125
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 131
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 164
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 113
  ]
]
