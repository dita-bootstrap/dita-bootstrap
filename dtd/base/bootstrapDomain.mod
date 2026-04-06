<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Bootstrap Domain                             -->
<!--  DATE:      March 2026                                        -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->
<!-- ============================================================= -->

<!ENTITY % alert.content "(#PCDATA | %title; | %basic.block; | %data.elements.incl; | %foreign.unknown.incl; | %sectiondiv; | %txt.incl;)*">
<!ENTITY % alert.attributes
  "outputclass CDATA 'alert'
   color (primary | secondary | success | danger | warning | info | light | dark) #REQUIRED
   %univ-atts;">
<!ELEMENT alert %alert.content;>
<!ATTLIST alert %alert.attributes;>

<!ENTITY % accordion.content "((%accordion-item;)+)">
<!ENTITY % accordion.attributes "outputclass CDATA 'accordion' flush (yes | no) 'no' open (yes | no) 'no' %univ-atts;">
<!ELEMENT accordion %accordion.content;>
<!ATTLIST accordion %accordion.attributes;
  color (primary | secondary | success | danger | warning | info | light | dark) #IMPLIED
  border (yes | no | 1 | 2 | 3 | 4 | 5) #IMPLIED
  rounded (yes | no | 0 | 1 | 2 | 3 | 4 | 5 | circle | pill) #IMPLIED
  bordercolor (primary | secondary | success | danger | warning | info | light | dark | white | black | primary-subtle | secondary-subtle | success-subtle | danger-subtle | warning-subtle | info-subtle | light-subtle | dark-subtle) #IMPLIED
  margin CDATA #IMPLIED
  padding CDATA #IMPLIED
  shadow (yes | no | sm | lg | none) #IMPLIED
  width (25 | 50 | 75 | 100 | auto) #IMPLIED
>

<!ENTITY % accordion-item.content "((%title;), (%basic.block; | %data.elements.incl; | %draft-comment; | %fn; | %foreign.unknown.incl; | %required-cleanup; | %sectiondiv; | %txt.incl;)*)">
<!ENTITY % accordion-item.attributes "spectitle CDATA #IMPLIED outputclass CDATA 'accordion-item' open (yes | no) #IMPLIED %univ-atts;">
<!ELEMENT accordion-item %accordion-item.content;>
<!ATTLIST accordion-item %accordion-item.attributes;>

<!ENTITY % badge.content "(%ph.cnt;)*">
<!ENTITY % badge.attributes
  "outputclass CDATA 'badge'
   color (primary | secondary | success | danger | warning | info | light | dark) 'primary'
   %univ-atts;">
<!ELEMENT badge %badge.content;>
<!ATTLIST badge %badge.attributes;>

<!ENTITY % button.content "(%ph.cnt;)*">
<!ENTITY % button.attributes
  "href CDATA #IMPLIED
   outputclass CDATA 'btn'
   color (primary | secondary | success | danger | warning | info | light | dark) 'primary'
   outline (yes | no) 'no'
   size (small | large) #IMPLIED
   %univ-atts;">
<!ELEMENT button %button.content;>
<!ATTLIST button %button.attributes;>

<!ENTITY % button-group.content "(%bodydiv.cnt; | %bodydiv;)*">
<!ENTITY % button-group.attributes
  "outputclass CDATA #IMPLIED
   vertical (yes | no) 'no'
   %univ-atts;">
<!ELEMENT button-group %button-group.content;>
<!ATTLIST button-group %button-group.attributes;
  margin CDATA #IMPLIED
  shadow (yes | no | sm | lg | none) #IMPLIED
>

<!ENTITY % button-toolbar.content "(%bodydiv.cnt; | %bodydiv;)*">
<!ENTITY % button-toolbar.attributes
  "outputclass CDATA 'btn-toolbar'
   %univ-atts;">
<!ELEMENT button-toolbar %button-toolbar.content;>
<!ATTLIST button-toolbar %button-toolbar.attributes;
  margin CDATA #IMPLIED
  shadow (yes | no | sm | lg | none) #IMPLIED
>

<!ENTITY % card.content "(%section.cnt;)*">
<!ENTITY % card.attributes "outputclass CDATA 'card' 
   color (primary | secondary | success | danger | warning | info | light | dark) #IMPLIED
   spectitle CDATA #IMPLIED %univ-atts;">
<!ELEMENT card %card.content;>
<!ATTLIST card %card.attributes;
  border (yes | no | 1 | 2 | 3 | 4 | 5) #IMPLIED
  rounded (yes | no | 0 | 1 | 2 | 3 | 4 | 5 | circle | pill) #IMPLIED
  bordercolor (primary | secondary | success | danger | warning | info | light | dark | white | black | primary-subtle | secondary-subtle | success-subtle | danger-subtle | warning-subtle | info-subtle | light-subtle | dark-subtle) #IMPLIED
  margin CDATA #IMPLIED
  shadow (yes | no | sm | lg | none) #IMPLIED
  width (25 | 50 | 75 | 100 | auto) #IMPLIED
>

<!ENTITY % card-header.content "(%div.cnt;)*">
<!ENTITY % card-header.attributes "outputclass CDATA 'card-header' %univ-atts;">
<!ELEMENT card-header %card-header.content;>
<!ATTLIST card-header %card-header.attributes;>

<!ENTITY % card-footer.content "(%div.cnt;)*">
<!ENTITY % card-footer.attributes "outputclass CDATA 'card-footer' %univ-atts;">
<!ELEMENT card-footer %card-footer.content;>
<!ATTLIST card-footer %card-footer.attributes;>

<!ENTITY % carousel.content "(%li; | %carousel-item;)*">
<!ENTITY % carousel.attributes "outputclass CDATA #IMPLIED indicators (yes | no) #IMPLIED interval CDATA #IMPLIED touch (yes | no) #IMPLIED autoplay (yes | no) #IMPLIED fade (yes | no) #IMPLIED cols (1 | 2 | 3 | 4) #IMPLIED %univ-atts;">
<!ELEMENT carousel %carousel.content;>
<!ATTLIST carousel %carousel.attributes;
  color (primary | secondary | success | danger | warning | info | light | dark) #IMPLIED
  border (yes | no | 1 | 2 | 3 | 4 | 5) #IMPLIED
  rounded (yes | no | 0 | 1 | 2 | 3 | 4 | 5 | circle | pill) #IMPLIED
  bordercolor (primary | secondary | success | danger | warning | info | light | dark | white | black | primary-subtle | secondary-subtle | success-subtle | danger-subtle | warning-subtle | info-subtle | light-subtle | dark-subtle) #IMPLIED
  margin CDATA #IMPLIED
  padding CDATA #IMPLIED
  shadow (yes | no | sm | lg | none) #IMPLIED
  width (25 | 50 | 75 | 100 | auto) #IMPLIED
>

<!ENTITY % carousel-item.content "(%section.cnt; | %bodydiv;)*">
<!ENTITY % carousel-item.attributes "outputclass CDATA #IMPLIED interval CDATA #IMPLIED %univ-atts;">
<!ELEMENT carousel-item %carousel-item.content;>
<!ATTLIST carousel-item %carousel-item.attributes;>

<!ENTITY % collapse.content "(%bodydiv.cnt; | %bodydiv; | %section;)*">
<!ENTITY % collapse.attributes "outputclass CDATA 'collapse' otherprops CDATA #IMPLIED %univ-atts;">
<!ELEMENT collapse %collapse.content;>
<!ATTLIST collapse %collapse.attributes;>

<!ENTITY % icon.content "(%ph.cnt;)*">
<!ENTITY % icon.attributes "outputclass CDATA 'icon' margin CDATA #IMPLIED padding CDATA #IMPLIED otherprops CDATA #IMPLIED style CDATA #IMPLIED %univ-atts;">
<!ELEMENT icon %icon.content;>
<!ATTLIST icon %icon.attributes;>

<!--                    GRID ROW                                  -->
<!ENTITY % grid-row.content "(%grid-col; | %bodydiv; | %div;)*">
<!ENTITY % grid-row.attributes "outputclass CDATA 'row' %univ-atts;">
<!ELEMENT grid-row %grid-row.content;>
<!ATTLIST grid-row %grid-row.attributes;>

<!--                    GRID COL                                  -->
<!ENTITY % grid-col.content "(%bodydiv.cnt; | %bodydiv; | %section;)*">
<!ENTITY % grid-col.attributes "outputclass CDATA 'col' breakpoint (sm | md | lg | xl | xxl) #IMPLIED colspan CDATA #IMPLIED %univ-atts;">
<!ELEMENT grid-col %grid-col.content;>
<!ATTLIST grid-col %grid-col.attributes;>

<!ENTITY % list-group.content "(%li;)*">
<!ENTITY % list-group.attributes "outputclass CDATA #IMPLIED compact (yes | no) #IMPLIED flush (yes | no) #IMPLIED %univ-atts;">
<!ELEMENT list-group %list-group.content;>
<!ATTLIST list-group %list-group.attributes;
  color (primary | secondary | success | danger | warning | info | light | dark) #IMPLIED
  margin CDATA #IMPLIED
  shadow (yes | no | sm | lg | none) #IMPLIED
  width (25 | 50 | 75 | 100 | auto) #IMPLIED
>

<!ENTITY % offcanvas.content "(%section.cnt;)*">
<!ENTITY % offcanvas.attributes "outputclass CDATA #IMPLIED spectitle CDATA #IMPLIED position (top | bottom | start | end) #IMPLIED %univ-atts;">
<!ELEMENT offcanvas %offcanvas.content;>
<!ATTLIST offcanvas %offcanvas.attributes;
  color (primary | secondary | success | danger | warning | info | light | dark) #IMPLIED
  margin CDATA #IMPLIED
  shadow (yes | no | sm | lg | none) #IMPLIED
  width (25 | 50 | 75 | 100 | auto) #IMPLIED
>

<!ENTITY % pagination.content "(%section.cnt;)*">
<!ENTITY % pagination.attributes "outputclass CDATA 'pagination' spectitle CDATA #IMPLIED size (small | large) #IMPLIED %univ-atts;">
<!ELEMENT pagination %pagination.content;>
<!ATTLIST pagination %pagination.attributes;
  margin CDATA #IMPLIED
  shadow (yes | no | sm | lg | none) #IMPLIED
>

<!ENTITY % popover.content "(%ph.cnt; | %desc;)*">
<!ENTITY % popover.attributes "href CDATA '#' outputclass CDATA #IMPLIED position (top | bottom | left | right) #IMPLIED %univ-atts;">
<!ELEMENT popover %popover.content;>
<!ATTLIST popover %popover.attributes;
  color (primary | secondary | success | danger | warning | info | light | dark) #IMPLIED
  margin CDATA #IMPLIED
  size (small | large) #IMPLIED
>

<!ENTITY % tabbed-dialog.content "(%bodydiv.cnt; | %bodydiv; | %section;)*">
<!ENTITY % tabbed-dialog.attributes "outputclass CDATA #IMPLIED style (tabs | pills | vertical-pills) 'tabs' %univ-atts;">
<!ELEMENT tabbed-dialog %tabbed-dialog.content;>
<!ATTLIST tabbed-dialog %tabbed-dialog.attributes;
  color (primary | secondary | success | danger | warning | info | light | dark) #IMPLIED
  border (yes | no | 1 | 2 | 3 | 4 | 5) #IMPLIED
  rounded (yes | no | 0 | 1 | 2 | 3 | 4 | 5 | circle | pill) #IMPLIED
  bordercolor (primary | secondary | success | danger | warning | info | light | dark | white | black | primary-subtle | secondary-subtle | success-subtle | danger-subtle | warning-subtle | info-subtle | light-subtle | dark-subtle) #IMPLIED
  margin CDATA #IMPLIED
  padding CDATA #IMPLIED
  shadow (yes | no | sm | lg | none) #IMPLIED
  width (25 | 50 | 75 | 100 | auto) #IMPLIED
>

<!ENTITY % tooltip.content "(%ph.cnt; | %desc;)*">
<!ENTITY % tooltip.attributes "href CDATA '#' outputclass CDATA #IMPLIED position (top | bottom | left | right) #IMPLIED %univ-atts;">
<!ELEMENT tooltip %tooltip.content;>
<!ATTLIST tooltip %tooltip.attributes;
  color (primary | secondary | success | danger | warning | info | light | dark) #IMPLIED
  margin CDATA #IMPLIED
  size (small | large) #IMPLIED
>


<!--                    PICTURE                                   -->
<!ENTITY % picture.content "(%image;)*">
<!ENTITY % picture.attributes "outputclass CDATA 'd-picture' %univ-atts;">
<!ELEMENT picture %picture.content;>
<!ATTLIST picture %picture.attributes;>

<!--                    THUMBNAIL                                 -->
<!ENTITY % thumbnail.content "((%alt;)? , (%longdescref;)?)">
<!ENTITY % thumbnail.attributes "href CDATA #IMPLIED
                                keyref CDATA #IMPLIED
                                alt CDATA #IMPLIED
                                longdescref CDATA #IMPLIED
                                height NMTOKEN #IMPLIED
                                width NMTOKEN #IMPLIED
                                align CDATA #IMPLIED
                                scale NMTOKEN #IMPLIED
                                placement (inline | break) #IMPLIED
                                scope (external | local | peer | -dita-use-conref-target) #IMPLIED
                                outputclass CDATA 'img-thumbnail'
                                %univ-atts;">
<!ELEMENT thumbnail %thumbnail.content;>
<!ATTLIST thumbnail %thumbnail.attributes;
                                color (primary | secondary | success | danger | warning | info | light | dark) #IMPLIED
>

<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->

<!ATTLIST accordion class CDATA "+ topic/bodydiv bootstrap-d/accordion ">
<!ATTLIST alert class CDATA "+ topic/section bootstrap-d/alert ">
<!ATTLIST accordion-item class CDATA "+ topic/section bootstrap-d/accordion-item ">
<!ATTLIST badge class CDATA "+ topic/ph bootstrap-d/badge ">
<!ATTLIST button class CDATA "+ topic/xref bootstrap-d/button ">
<!ATTLIST button-group class CDATA "+ topic/bodydiv bootstrap-d/button-group ">
<!ATTLIST button-toolbar class CDATA "+ topic/bodydiv bootstrap-d/button-toolbar ">
<!ATTLIST card class CDATA "+ topic/section bootstrap-d/card ">
<!ATTLIST card-header class CDATA "+ topic/div bootstrap-d/card-header ">
<!ATTLIST card-footer class CDATA "+ topic/div bootstrap-d/card-footer ">
<!ATTLIST carousel class CDATA "+ topic/ul bootstrap-d/carousel ">
<!ATTLIST carousel-item class CDATA "+ topic/li bootstrap-d/carousel-item ">
<!ATTLIST collapse class CDATA "+ topic/bodydiv bootstrap-d/collapse ">
<!ATTLIST grid-row class CDATA "+ topic/bodydiv bootstrap-d/grid-row ">
<!ATTLIST grid-col class CDATA "+ topic/bodydiv bootstrap-d/grid-col ">
<!ATTLIST icon class CDATA "+ topic/ph bootstrap-d/icon ">
<!ATTLIST list-group class CDATA "+ topic/ul bootstrap-d/list-group ">
<!ATTLIST offcanvas class CDATA "+ topic/section bootstrap-d/offcanvas ">
<!ATTLIST pagination class CDATA "+ topic/section bootstrap-d/pagination ">
<!ATTLIST picture class CDATA "+ topic/div bootstrap-d/picture ">
<!ATTLIST popover class CDATA "+ topic/xref bootstrap-d/popover ">
<!ATTLIST tabbed-dialog class CDATA "+ topic/bodydiv bootstrap-d/tabbed-dialog ">
<!ATTLIST thumbnail class CDATA "+ topic/image bootstrap-d/thumbnail ">
<!ATTLIST tooltip class CDATA "+ topic/xref bootstrap-d/tooltip ">
