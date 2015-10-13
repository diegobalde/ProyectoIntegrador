
CREATE VIEW poliza_coberturas AS (
              SELECT id_poliza, id_cobertura, cobertura_descripcion
              FROM ( SELECT po.ID_POLIZA as id_poliza, co.ID_COBERTURA as id_cobertura, co.DESCRIPCION as cobertura_descripcion
                    FROM POLIZA po INNER JOIN  POLIZA_PLAN pp ON (po.ID_POLIZA = pp.ID_POLIZA)
                             INNER JOIN PLANES pl ON( pl.ID_PLAN = pp.ID_PLAN )
                             INNER JOIN PLAN_COBERTURA pc ON ( pc.ID_PLAN = pl.ID_PLAN )
                             INNER JOIN COBERTURA co ON ( pc.ID_COBERTURA = co.ID_COBERTURA ))
                   UNION 
                  (SELECT pol.ID_POLIZA as id_poliza, cob.ID_COBERTURA  as id_cobertura, cob.DESCRIPCION as cobertura_descripcion
                   FROM POLIZA pol INNER JOIN POLIZA_ANEXO pan ON (pol.ID_POLIZA = pan.ID_POLIZA  )
                              INNER JOIN ANEXO ane ON (ane.ID_ANEXO = pan.ID_ANEXO)
                              INNER JOIN ANEXO_COBERTURA anc ON ( anc.ID_ANEXO = ane.ID_ANEXO ) 
                              INNER JOIN COBERTURA cob ON ( cob.ID_COBERTURA = anc.ID_COBERTURA ) ));
