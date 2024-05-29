cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  other-neurological-disorders-elixhauser-primary-care-uncomplicated---primary:
    run: other-neurological-disorders-elixhauser-primary-care-uncomplicated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  other-neurological-disorders-elixhauser-primary-care-hydrocephalus---primary:
    run: other-neurological-disorders-elixhauser-primary-care-hydrocephalus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-uncomplicated---primary/output
  other-neurological-disorders-elixhauser-primary-care-motor---primary:
    run: other-neurological-disorders-elixhauser-primary-care-motor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-hydrocephalus---primary/output
  other-neurological-disorders-elixhauser-primary-care-consciousness---primary:
    run: other-neurological-disorders-elixhauser-primary-care-consciousness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-motor---primary/output
  other-neurological-disorders-elixhauser-primary-care-syndrome---primary:
    run: other-neurological-disorders-elixhauser-primary-care-syndrome---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-consciousness---primary/output
  other-neurological-disorders-elixhauser-primary-care-haemorrh---primary:
    run: other-neurological-disorders-elixhauser-primary-care-haemorrh---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-syndrome---primary/output
  other-neurological-disorders-elixhauser-primary-care-degen---primary:
    run: other-neurological-disorders-elixhauser-primary-care-degen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-haemorrh---primary/output
  cervical-other-neurological-disorders-elixhauser-primary-care---primary:
    run: cervical-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-degen---primary/output
  other-neurological-disorders-elixhauser-primary-care-steno---primary:
    run: other-neurological-disorders-elixhauser-primary-care-steno---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: cervical-other-neurological-disorders-elixhauser-primary-care---primary/output
  posttraumatic-other-neurological-disorders-elixhauser-primary-care---primary:
    run: posttraumatic-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-steno---primary/output
  leucoencephalopathy-other-neurological-disorders-elixhauser-primary-care---primary:
    run: leucoencephalopathy-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: posttraumatic-other-neurological-disorders-elixhauser-primary-care---primary/output
  bilateral-other-neurological-disorders-elixhauser-primary-care---primary:
    run: bilateral-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: leucoencephalopathy-other-neurological-disorders-elixhauser-primary-care---primary/output
  vertebrobasilar-other-neurological-disorders-elixhauser-primary-care---primary:
    run: vertebrobasilar-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: bilateral-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-parkinson---primary:
    run: other-neurological-disorders-elixhauser-primary-care-parkinson---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: vertebrobasilar-other-neurological-disorders-elixhauser-primary-care---primary/output
  antiparkinsonian-other-neurological-disorders-elixhauser-primary-care---primary:
    run: antiparkinsonian-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-parkinson---primary/output
  other-neurological-disorders-elixhauser-primary-care-stroke---primary:
    run: other-neurological-disorders-elixhauser-primary-care-stroke---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: antiparkinsonian-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-unspec---primary:
    run: other-neurological-disorders-elixhauser-primary-care-unspec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-stroke---primary/output
  other-neurological-disorders-elixhauser-primary-care-mention---primary:
    run: other-neurological-disorders-elixhauser-primary-care-mention---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-unspec---primary/output
  convulsive-other-neurological-disorders-elixhauser-primary-care---primary:
    run: convulsive-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-mention---primary/output
  referral-other-neurological-disorders-elixhauser-primary-care---primary:
    run: referral-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: convulsive-other-neurological-disorders-elixhauser-primary-care---primary/output
  multidisciplinary-other-neurological-disorders-elixhauser-primary-care---primary:
    run: multidisciplinary-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: referral-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-dementium---primary:
    run: other-neurological-disorders-elixhauser-primary-care-dementium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: multidisciplinary-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-abscess---primary:
    run: other-neurological-disorders-elixhauser-primary-care-abscess---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-dementium---primary/output
  other-neurological-disorders-elixhauser-primary-care-lumbar---primary:
    run: other-neurological-disorders-elixhauser-primary-care-lumbar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-abscess---primary/output
  spinal-other-neurological-disorders-elixhauser-primary-care---primary:
    run: spinal-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-lumbar---primary/output
  epilepsy-other-neurological-disorders-elixhauser-primary-care---primary:
    run: epilepsy-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: spinal-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-occlus---primary:
    run: other-neurological-disorders-elixhauser-primary-care-occlus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: epilepsy-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-hemiballismus---primary:
    run: other-neurological-disorders-elixhauser-primary-care-hemiballismus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-occlus---primary/output
  other-neurological-disorders-elixhauser-primary-care-myelitis---primary:
    run: other-neurological-disorders-elixhauser-primary-care-myelitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-hemiballismus---primary/output
  other-neurological-disorders-elixhauser-primary-care-superimposed---primary:
    run: other-neurological-disorders-elixhauser-primary-care-superimposed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-myelitis---primary/output
  other-neurological-disorders-elixhauser-primary-care-communicating---primary:
    run: other-neurological-disorders-elixhauser-primary-care-communicating---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-superimposed---primary/output
  other-neurological-disorders-elixhauser-primary-care-atrophy---primary:
    run: other-neurological-disorders-elixhauser-primary-care-atrophy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-communicating---primary/output
  vascular-other-neurological-disorders-elixhauser-primary-care---primary:
    run: vascular-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-atrophy---primary/output
  other-neurological-disorders-elixhauser-primary-care-reporting---primary:
    run: other-neurological-disorders-elixhauser-primary-care-reporting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: vascular-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-cereb---primary:
    run: other-neurological-disorders-elixhauser-primary-care-cereb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-reporting---primary/output
  other-neurological-disorders-elixhauser-primary-care-reflex---primary:
    run: other-neurological-disorders-elixhauser-primary-care-reflex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-cereb---primary/output
  other-neurological-disorders-elixhauser-primary-care-brainstem---primary:
    run: other-neurological-disorders-elixhauser-primary-care-brainstem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-reflex---primary/output
  right-other-neurological-disorders-elixhauser-primary-care---primary:
    run: right-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-brainstem---primary/output
  central-other-neurological-disorders-elixhauser-primary-care---primary:
    run: central-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: right-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-month---primary:
    run: other-neurological-disorders-elixhauser-primary-care-month---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: central-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-stenosis---primary:
    run: other-neurological-disorders-elixhauser-primary-care-stenosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-month---primary/output
  other-neurological-disorders-elixhauser-primary-care-pressure---primary:
    run: other-neurological-disorders-elixhauser-primary-care-pressure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-stenosis---primary/output
  other-neurological-disorders-elixhauser-primary-care-presenile---primary:
    run: other-neurological-disorders-elixhauser-primary-care-presenile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-pressure---primary/output
  other-neurological-disorders-elixhauser-primary-care-ataxia---primary:
    run: other-neurological-disorders-elixhauser-primary-care-ataxia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-presenile---primary/output
  congenital-other-neurological-disorders-elixhauser-primary-care---primary:
    run: congenital-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-ataxia---primary/output
  other-neurological-disorders-elixhauser-primary-care-patch---primary:
    run: other-neurological-disorders-elixhauser-primary-care-patch---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: congenital-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-improvement---primary:
    run: other-neurological-disorders-elixhauser-primary-care-improvement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-patch---primary/output
  subcortical-other-neurological-disorders-elixhauser-primary-care---primary:
    run: subcortical-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-improvement---primary/output
  other-neurological-disorders-elixhauser-primary-care-dementiaalzheimer---primary:
    run: other-neurological-disorders-elixhauser-primary-care-dementiaalzheimer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: subcortical-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-huntington---primary:
    run: other-neurological-disorders-elixhauser-primary-care-huntington---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-dementiaalzheimer---primary/output
  nontraumatic-other-neurological-disorders-elixhauser-primary-care---primary:
    run: nontraumatic-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-huntington---primary/output
  other-neurological-disorders-elixhauser-primary-care-chorea---primary:
    run: other-neurological-disorders-elixhauser-primary-care-chorea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: nontraumatic-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-review---primary:
    run: other-neurological-disorders-elixhauser-primary-care-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-chorea---primary/output
  other-neurological-disorders-elixhauser-primary-care-absence---primary:
    run: other-neurological-disorders-elixhauser-primary-care-absence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-review---primary/output
  other-neurological-disorders-elixhauser-primary-care-epilepticu---primary:
    run: other-neurological-disorders-elixhauser-primary-care-epilepticu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-absence---primary/output
  other-neurological-disorders-elixhauser-primary-care-ischaemia---primary:
    run: other-neurological-disorders-elixhauser-primary-care-ischaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-epilepticu---primary/output
  other-neurological-disorders-elixhauser-primary-care-adver---primary:
    run: other-neurological-disorders-elixhauser-primary-care-adver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-ischaemia---primary/output
  other-neurological-disorders-elixhauser-primary-care-tremor---primary:
    run: other-neurological-disorders-elixhauser-primary-care-tremor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-adver---primary/output
  other-neurological-disorders-elixhauser-primary-care-second---primary:
    run: other-neurological-disorders-elixhauser-primary-care-second---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-tremor---primary/output
  other-neurological-disorders-elixhauser-primary-care-induced---primary:
    run: other-neurological-disorders-elixhauser-primary-care-induced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-second---primary/output
  other-neurological-disorders-elixhauser-primary-care-precerebr---primary:
    run: other-neurological-disorders-elixhauser-primary-care-precerebr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-induced---primary/output
  paranoid-other-neurological-disorders-elixhauser-primary-care---primary:
    run: paranoid-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-precerebr---primary/output
  anoxic-other-neurological-disorders-elixhauser-primary-care---primary:
    run: anoxic-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: paranoid-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-phase---primary:
    run: other-neurological-disorders-elixhauser-primary-care-phase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: anoxic-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-monitoring---primary:
    run: other-neurological-disorders-elixhauser-primary-care-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-phase---primary/output
  other-neurological-disorders-elixhauser-primary-care-therap---primary:
    run: other-neurological-disorders-elixhauser-primary-care-therap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-monitoring---primary/output
  tonicclonic-other-neurological-disorders-elixhauser-primary-care---primary:
    run: tonicclonic-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-therap---primary/output
  other-neurological-disorders-elixhauser-primary-care-schilder's---primary:
    run: other-neurological-disorders-elixhauser-primary-care-schilder's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: tonicclonic-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-delirium---primary:
    run: other-neurological-disorders-elixhauser-primary-care-delirium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-schilder's---primary/output
  other-neurological-disorders-elixhauser-primary-care-otohara---primary:
    run: other-neurological-disorders-elixhauser-primary-care-otohara---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-delirium---primary/output
  other-neurological-disorders-elixhauser-primary-care-disseminated---primary:
    run: other-neurological-disorders-elixhauser-primary-care-disseminated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-otohara---primary/output
  other-neurological-disorders-elixhauser-primary-care-acquired---primary:
    run: other-neurological-disorders-elixhauser-primary-care-acquired---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-disseminated---primary/output
  other-neurological-disorders-elixhauser-primary-care-wallenberg---primary:
    run: other-neurological-disorders-elixhauser-primary-care-wallenberg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-acquired---primary/output
  other-neurological-disorders-elixhauser-primary-care-depression---primary:
    run: other-neurological-disorders-elixhauser-primary-care-depression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-wallenberg---primary/output
  other-neurological-disorders-elixhauser-primary-care-pregnancy---primary:
    run: other-neurological-disorders-elixhauser-primary-care-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-depression---primary/output
  progressive-other-neurological-disorders-elixhauser-primary-care---primary:
    run: progressive-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-pregnancy---primary/output
  other-neurological-disorders-elixhauser-primary-care-control---primary:
    run: other-neurological-disorders-elixhauser-primary-care-control---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: progressive-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-state---primary:
    run: other-neurological-disorders-elixhauser-primary-care-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-control---primary/output
  other-neurological-disorders-elixhauser-primary-care-beriberi---primary:
    run: other-neurological-disorders-elixhauser-primary-care-beriberi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-state---primary/output
  focal-other-neurological-disorders-elixhauser-primary-care---primary:
    run: focal-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-beriberi---primary/output
  carotid-other-neurological-disorders-elixhauser-primary-care---primary:
    run: carotid-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: focal-other-neurological-disorders-elixhauser-primary-care---primary/output
  hereditary-other-neurological-disorders-elixhauser-primary-care---primary:
    run: hereditary-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: carotid-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-jakobcreutzfeldt---primary:
    run: other-neurological-disorders-elixhauser-primary-care-jakobcreutzfeldt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: hereditary-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-first---primary:
    run: other-neurological-disorders-elixhauser-primary-care-first---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-jakobcreutzfeldt---primary/output
  other-neurological-disorders-elixhauser-primary-care---primary:
    run: other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-first---primary/output
  other-neurological-disorders-elixhauser-primary-care-demyelinating---primary:
    run: other-neurological-disorders-elixhauser-primary-care-demyelinating---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-treatment---primary:
    run: other-neurological-disorders-elixhauser-primary-care-treatment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-demyelinating---primary/output
  other-neurological-disorders-elixhauser-primary-care-administration---primary:
    run: other-neurological-disorders-elixhauser-primary-care-administration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-treatment---primary/output
  myoclonic-other-neurological-disorders-elixhauser-primary-care---primary:
    run: myoclonic-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-administration---primary/output
  other-neurological-disorders-elixhauser-primary-care-third---primary:
    run: other-neurological-disorders-elixhauser-primary-care-third---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: myoclonic-other-neurological-disorders-elixhauser-primary-care---primary/output
  thoracic-other-neurological-disorders-elixhauser-primary-care---primary:
    run: thoracic-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-third---primary/output
  other-neurological-disorders-elixhauser-primary-care-sclerosis---primary:
    run: other-neurological-disorders-elixhauser-primary-care-sclerosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: thoracic-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-childhood---primary:
    run: other-neurological-disorders-elixhauser-primary-care-childhood---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-sclerosis---primary/output
  other-neurological-disorders-elixhauser-primary-care-associated---primary:
    run: other-neurological-disorders-elixhauser-primary-care-associated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-childhood---primary/output
  other-neurological-disorders-elixhauser-primary-care-seizure---primary:
    run: other-neurological-disorders-elixhauser-primary-care-seizure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-associated---primary/output
  other-neurological-disorders-elixhauser-primary-care-basal---primary:
    run: other-neurological-disorders-elixhauser-primary-care-basal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-seizure---primary/output
  other-neurological-disorders-elixhauser-primary-care-sided---primary:
    run: other-neurological-disorders-elixhauser-primary-care-sided---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-basal---primary/output
  acute-other-neurological-disorders-elixhauser-primary-care---primary:
    run: acute-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-sided---primary/output
  personal-other-neurological-disorders-elixhauser-primary-care---primary:
    run: personal-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: acute-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-infarct---primary:
    run: other-neurological-disorders-elixhauser-primary-care-infarct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: personal-other-neurological-disorders-elixhauser-primary-care---primary/output
  juvenile-other-neurological-disorders-elixhauser-primary-care---primary:
    run: juvenile-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-infarct---primary/output
  other-neurological-disorders-elixhauser-primary-care-involvement---primary:
    run: other-neurological-disorders-elixhauser-primary-care-involvement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: juvenile-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-forms---primary:
    run: other-neurological-disorders-elixhauser-primary-care-forms---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-involvement---primary/output
  other-neurological-disorders-elixhauser-primary-care-lennoxgastaut---primary:
    run: other-neurological-disorders-elixhauser-primary-care-lennoxgastaut---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-forms---primary/output
  sacral-other-neurological-disorders-elixhauser-primary-care---primary:
    run: sacral-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-lennoxgastaut---primary/output
  other-neurological-disorders-elixhauser-primary-care-anomaly---primary:
    run: other-neurological-disorders-elixhauser-primary-care-anomaly---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: sacral-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-spasm---primary:
    run: other-neurological-disorders-elixhauser-primary-care-spasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-anomaly---primary/output
  other-neurological-disorders-elixhauser-primary-care-effects---primary:
    run: other-neurological-disorders-elixhauser-primary-care-effects---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-spasm---primary/output
  other-neurological-disorders-elixhauser-primary-care-hemisphere---primary:
    run: other-neurological-disorders-elixhauser-primary-care-hemisphere---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-effects---primary/output
  other-neurological-disorders-elixhauser-primary-care-endarterectomy---primary:
    run: other-neurological-disorders-elixhauser-primary-care-endarterectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-hemisphere---primary/output
  other-neurological-disorders-elixhauser-primary-care-infantile---primary:
    run: other-neurological-disorders-elixhauser-primary-care-infantile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-endarterectomy---primary/output
  other-neurological-disorders-elixhauser-primary-care-capsule---primary:
    run: other-neurological-disorders-elixhauser-primary-care-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-infantile---primary/output
  other-neurological-disorders-elixhauser-primary-care-excepted---primary:
    run: other-neurological-disorders-elixhauser-primary-care-excepted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-capsule---primary/output
  annual-other-neurological-disorders-elixhauser-primary-care---primary:
    run: annual-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-excepted---primary/output
  other-neurological-disorders-elixhauser-primary-care-invite---primary:
    run: other-neurological-disorders-elixhauser-primary-care-invite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: annual-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-petit---primary:
    run: other-neurological-disorders-elixhauser-primary-care-petit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-invite---primary/output
  other-neurological-disorders-elixhauser-primary-care-anterior---primary:
    run: other-neurological-disorders-elixhauser-primary-care-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-petit---primary/output
  other-neurological-disorders-elixhauser-primary-care-verbal---primary:
    run: other-neurological-disorders-elixhauser-primary-care-verbal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-anterior---primary/output
  other-neurological-disorders-elixhauser-primary-care-declined---primary:
    run: other-neurological-disorders-elixhauser-primary-care-declined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-verbal---primary/output
  other-neurological-disorders-elixhauser-primary-care-benign---primary:
    run: other-neurological-disorders-elixhauser-primary-care-benign---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-declined---primary/output
  rheumatic-other-neurological-disorders-elixhauser-primary-care---primary:
    run: rheumatic-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-benign---primary/output
  other-neurological-disorders-elixhauser-primary-care-attack---primary:
    run: other-neurological-disorders-elixhauser-primary-care-attack---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: rheumatic-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-features---primary:
    run: other-neurological-disorders-elixhauser-primary-care-features---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-attack---primary/output
  vertebral-other-neurological-disorders-elixhauser-primary-care---primary:
    run: vertebral-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-features---primary/output
  other-neurological-disorders-elixhauser-primary-care-hypsarrhythmia---primary:
    run: other-neurological-disorders-elixhauser-primary-care-hypsarrhythmia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: vertebral-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-pseudobulbar---primary:
    run: other-neurological-disorders-elixhauser-primary-care-pseudobulbar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-hypsarrhythmia---primary/output
  grand-other-neurological-disorders-elixhauser-primary-care---primary:
    run: grand-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-pseudobulbar---primary/output
  other-neurological-disorders-elixhauser-primary-care-agreed---primary:
    run: other-neurological-disorders-elixhauser-primary-care-agreed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: grand-other-neurological-disorders-elixhauser-primary-care---primary/output
  neoplastic-other-neurological-disorders-elixhauser-primary-care---primary:
    run: neoplastic-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-agreed---primary/output
  other-neurological-disorders-elixhauser-primary-care-sensory---primary:
    run: other-neurological-disorders-elixhauser-primary-care-sensory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: neoplastic-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-employment---primary:
    run: other-neurological-disorders-elixhauser-primary-care-employment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-sensory---primary/output
  arteriosclerotic-other-neurological-disorders-elixhauser-primary-care---primary:
    run: arteriosclerotic-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-employment---primary/output
  nocturnal-other-neurological-disorders-elixhauser-primary-care---primary:
    run: nocturnal-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: arteriosclerotic-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-panayiotopoulos---primary:
    run: other-neurological-disorders-elixhauser-primary-care-panayiotopoulos---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: nocturnal-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-impairment---primary:
    run: other-neurological-disorders-elixhauser-primary-care-impairment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-panayiotopoulos---primary/output
  other-neurological-disorders-elixhauser-primary-care-generalised---primary:
    run: other-neurological-disorders-elixhauser-primary-care-generalised---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-impairment---primary/output
  other-neurological-disorders-elixhauser-primary-care-ohtahara---primary:
    run: other-neurological-disorders-elixhauser-primary-care-ohtahara---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-generalised---primary/output
  other-neurological-disorders-elixhauser-primary-care-dysarthria---primary:
    run: other-neurological-disorders-elixhauser-primary-care-dysarthria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-ohtahara---primary/output
  other-neurological-disorders-elixhauser-primary-care-origin---primary:
    run: other-neurological-disorders-elixhauser-primary-care-origin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-dysarthria---primary/output
  other-neurological-disorders-elixhauser-primary-care-function---primary:
    run: other-neurological-disorders-elixhauser-primary-care-function---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-origin---primary/output
  limbic-other-neurological-disorders-elixhauser-primary-care---primary:
    run: limbic-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-function---primary/output
  partial-other-neurological-disorders-elixhauser-primary-care---primary:
    run: partial-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: limbic-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-lacunar---primary:
    run: other-neurological-disorders-elixhauser-primary-care-lacunar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: partial-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-heart---primary:
    run: other-neurological-disorders-elixhauser-primary-care-heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-lacunar---primary/output
  complex-other-neurological-disorders-elixhauser-primary-care---primary:
    run: complex-other-neurological-disorders-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-heart---primary/output
  other-neurological-disorders-elixhauser-primary-care-management---primary:
    run: other-neurological-disorders-elixhauser-primary-care-management---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: complex-other-neurological-disorders-elixhauser-primary-care---primary/output
  other-neurological-disorders-elixhauser-primary-care-west---primary:
    run: other-neurological-disorders-elixhauser-primary-care-west---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-management---primary/output
  other-neurological-disorders-elixhauser-primary-care-preconception---primary:
    run: other-neurological-disorders-elixhauser-primary-care-preconception---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-west---primary/output
  other-neurological-disorders-elixhauser-primary-care-aphasia---primary:
    run: other-neurological-disorders-elixhauser-primary-care-aphasia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-preconception---primary/output
  other-neurological-disorders-elixhauser-primary-care-classified---primary:
    run: other-neurological-disorders-elixhauser-primary-care-classified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-aphasia---primary/output
  other-neurological-disorders-elixhauser-primary-care-palsy---primary:
    run: other-neurological-disorders-elixhauser-primary-care-palsy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-classified---primary/output
  other-neurological-disorders-elixhauser-primary-care-infarctn---primary:
    run: other-neurological-disorders-elixhauser-primary-care-infarctn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-palsy---primary/output
  other-neurological-disorders-elixhauser-primary-care-advice---primary:
    run: other-neurological-disorders-elixhauser-primary-care-advice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-infarctn---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: other-neurological-disorders-elixhauser-primary-care-advice---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
