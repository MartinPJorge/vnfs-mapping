graph [
  node [
    id 0
    label 1
    disk 8
    cpu 4
    memory 15
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 1
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 4
    memory 12
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 5
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 10
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 109
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 86
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 157
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 111
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 50
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 121
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 62
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 174
  ]
]
