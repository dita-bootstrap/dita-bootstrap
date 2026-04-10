<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Bootstrap Common Overrides                   -->
<!--  DATE:      March 2026                                        -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    ELEMENT EXTENSIONS                         -->
<!-- ============================================================= -->

<!ENTITY % bootstrap-decoration-atts
  "color (primary | secondary | success | danger | warning | info | light | dark) #IMPLIED
   border (yes | no | 1 | 2 | 3 | 4 | 5) #IMPLIED
   bordercolor (primary | secondary | success | danger | warning | info | light | dark | white | black | primary-subtle | secondary-subtle | success-subtle | danger-subtle | warning-subtle | info-subtle | light-subtle | dark-subtle) #IMPLIED
   rounded (yes | no | 0 | 1 | 2 | 3 | 4 | 5 | circle | pill) #IMPLIED
   margin CDATA #IMPLIED
   padding CDATA #IMPLIED
   shadow (yes | no | sm | md | lg | none) #IMPLIED
   width (25 | 50 | 75 | 100 | auto) #IMPLIED"
>

<!ENTITY % table-color-atts
  "color (primary | secondary | success | danger | warning | info | light | dark) #IMPLIED"
>

<!ATTLIST pre %bootstrap-decoration-atts;>
<!ATTLIST lines %bootstrap-decoration-atts;>
<!ATTLIST div %bootstrap-decoration-atts;>
<!ATTLIST bodydiv %bootstrap-decoration-atts;>
<!ATTLIST table
  %bootstrap-decoration-atts;
  striped (yes | no) #IMPLIED
  striped-columns (yes | no) #IMPLIED
  divider (yes | no) #IMPLIED
  compact (yes | no) #IMPLIED
>
<!ATTLIST row %table-color-atts;>
<!ATTLIST section %bootstrap-decoration-atts;>
<!ATTLIST example %bootstrap-decoration-atts;>
<!ATTLIST entry %table-color-atts;>
<!ATTLIST thead %table-color-atts;>
<!ATTLIST tbody %table-color-atts;>
<!ATTLIST tfoot %table-color-atts;>
<!ATTLIST sthead %table-color-atts;>
<!ATTLIST strow %table-color-atts;>
<!ATTLIST stentry %table-color-atts;>
<!ATTLIST fig %bootstrap-decoration-atts;>
<!ATTLIST image %bootstrap-decoration-atts;>
<!ATTLIST lq %bootstrap-decoration-atts;>
<!ATTLIST codeblock %bootstrap-decoration-atts;>
<!ATTLIST xref %bootstrap-decoration-atts;>
<!ATTLIST ph %bootstrap-decoration-atts;>

<!ATTLIST dl
  colspan CDATA #IMPLIED
>

<!ATTLIST image
  media CDATA #IMPLIED
  type CDATA #IMPLIED
  loading (lazy | eager) #IMPLIED
>

<!ATTLIST note
  color (primary | secondary | success | danger | warning | info | light | dark) #IMPLIED
  border (yes | no | 1 | 2 | 3 | 4 | 5) #IMPLIED
  bordercolor (primary | secondary | success | danger | warning | info | light | dark | white | black | primary-subtle | secondary-subtle | success-subtle | danger-subtle | warning-subtle | info-subtle | light-subtle | dark-subtle) #IMPLIED
  rounded (yes | no | 0 | 1 | 2 | 3 | 4 | 5 | circle | pill) #IMPLIED
  margin CDATA #IMPLIED
  padding CDATA #IMPLIED
  width (25 | 50 | 75 | 100 | auto) #IMPLIED
  shadow (yes | no | sm | md | lg | none) #IMPLIED
  icon CDATA #IMPLIED
  style CDATA #IMPLIED
>

<!-- ================= End of DITA Bootstrap Common Overrides ===== -->
