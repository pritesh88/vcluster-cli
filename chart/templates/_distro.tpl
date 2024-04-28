{{- define "vcluster.distro.env" -}}
{{- if and (eq (include "vcluster.distro" .) "k3s") .Values.controlPlane.distro.k3s.env -}}
{{ toYaml .Values.controlPlane.distro.k3s.env }}
{{- else if and (eq (include "vcluster.distro" .) "k8s") .Values.controlPlane.distro.k8s.env -}}
{{ toYaml .Values.controlPlane.distro.k8s.env }}
{{- else if and (eq (include "vcluster.distro" .) "k0s") .Values.controlPlane.distro.k0s.env -}}
{{ toYaml .Values.controlPlane.distro.k0s.env }}
{{- else if and (eq (include "vcluster.distro" .) "eks") .Values.controlPlane.distro.eks.env -}}
{{ toYaml .Values.controlPlane.distro.eks.env }}
{{- end -}}
{{- end -}}

{{/*
  vCluster Distro
*/}}
{{- define "vcluster.distro" -}}
{{- $distros := 0 -}}
{{- if .Values.controlPlane.distro.k3s.enabled -}}
k3s
{{- $distros = add1 $distros -}}
{{- end -}}
{{- if .Values.controlPlane.distro.k0s.enabled -}}
k0s
{{- $distros = add1 $distros -}}
{{- end -}}
{{- if .Values.controlPlane.distro.k8s.enabled -}}
k8s
{{- $distros = add1 $distros -}}
{{- end -}}
{{- if .Values.controlPlane.distro.eks.enabled -}}
eks
{{- $distros = add1 $distros -}}
{{- end -}}
{{- if eq $distros 0 -}}
k8s
{{- else if gt $distros 1 -}}
{{- fail "you can only enable one distro at the same time" -}}
{{- end -}}
{{- end -}}
