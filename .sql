SELECT 
  id,
  loan_amnt,
  -- 36 mesi a 36
  SAFE_CAST(REGEXP_EXTRACT(term, r'\d+') AS INT64) AS term_months,
  int_rate,
  installment,
  grade,
  emp_length,
  home_ownership,
  annual_inc,
  verification_status,
  issue_d,
  loan_status,
  purpose,
  addr_state,
  dti,
  -- rossi mutui (NPL)
  CASE 
    WHEN loan_status IN ('Charged Off', 'Default', 'Late (31-120 days)', 'Does not meet the credit policy. Status:Charged Off') THEN 1
    ELSE 0 
  END AS is_npl
FROM 
  `civil-icon-433816-u2.banking_data.final_loan_analysis`
WHERE 
  id IS NOT NULL
