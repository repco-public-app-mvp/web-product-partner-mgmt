-- =====================================================
-- Supabase PostgreSQL Data Import Script
-- Generated: 2026-01-12
-- =====================================================

-- =====================================================
-- Table: categories
-- Fields: id, name, color
-- =====================================================

INSERT INTO categories (id, name, color) VALUES
('technology', 'Technology', '#3b82f6'),
('marketing', 'Marketing Arm', '#ec4899'),
('finance', 'Product Owner', '#10b981'),
('operations', 'Operations', '#f59e0b'),
('strategy', 'Strategy', '#8b5cf6'),
('academic', 'Academic', '#06b6d4'),
('governance', 'Governance', '#84cc16'),
('customer', 'Customer', '#f43f5e'),
('cat_1766108849075', 'Contractor', '#d0b268');

-- =====================================================
-- Table: roles
-- Fields: id, name, color, description
-- =====================================================

INSERT INTO roles (id, name, color, description) VALUES
('analyst', 'Business Analyst', '#8b5cf6', 'Analyzes business requirements'),
('consultant', 'Consultant', '#14b8a6', 'Provides expert consultation'),
('role_1766371380234', 'Data Engineer', '#88abce', 'Data Engineer'),
('role_1766371339835', 'Data Science', '#030a8a', 'Data Science'),
('designer', 'Designer', '#ec4899', 'Creates UI/UX designs'),
('developer', 'Developer', '#0891b2', 'Develops technical solutions'),
('role_1768181992317', 'DevOps', '#f599da', 'CI/CD DevOps'),
('role_1766371538643', 'IT Service', '#865dd7', 'IT Service'),
('role_1766371561674', 'OT Service', '#4e5fac', 'OT Service'),
('coordinator', 'Project Coordinator', '#a855f7', 'Coordinates project activities'),
('project_manager', 'Project Manager', '#7c3aed', 'Leads and manages project execution'),
('tester', 'QA Tester', '#f59e0b', 'Tests and ensures quality'),
('architect', 'Solution Architect', '#6366f1', 'Designs system architecture'),
('solution_owner', 'Solution Owner', '#ea580c', 'Owns the solution design and requirements'),
('role_1768180953222', 'Solution Owner - Advanced Analytics', '#3a460e', 'Advanced Analytics Solution Expert Domain'),
('role_1768180942042', 'Solution Owner - CT', '#b7023c', 'Culture Transfromation Solution Expert Domain'),
('role_1767659059640', 'Solution Owner - TwinD', '#9093e8', 'Advanced Predictive Solution'),
('sponsor', 'Sponsor', '#dc2626', 'Provides funding and strategic direction'),
('role_1768004024736', 'Technical Writer', '#dad1d9', 'Documented all technical of software development');

-- =====================================================
-- Table: members
-- Fields: id, first_name, last_name, email, phone, company, department, title, location, roles (TEXT[]), skills (TEXT[]), notes
-- =====================================================

INSERT INTO members (id, first_name, last_name, email, phone, company, department, title, location, roles, skills, notes) VALUES
('m1767942011978', 'Ampol', 'Trathong', 'ampoltra@scg.com', '', 'REPCO', '', '', '', ARRAY['analyst','consultant','designer','developer','role_1768181992317','coordinator','project_manager','tester','architect','solution_owner'], ARRAY[]::TEXT[], ''),
('m1766371530200', 'Chaiwat', 'Jearvoranunt', 'chaiwjea@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['consultant','developer','role_1768181992317','role_1766371538643','project_manager'], ARRAY[]::TEXT[], ''),
('m1766371690958', 'Chanawut', 'Sawasdee', 'chanawsa@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','sponsor','solution_owner','analyst','consultant','coordinator'], ARRAY[]::TEXT[], ''),
('m1766371766809', 'Chanikarn', 'Tipjanrawee', 'CHANIKTI@SCG.COM', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','solution_owner','consultant','role_1766371339835'], ARRAY[]::TEXT[], ''),
('m1766371834417', 'Chulalux', 'Onpanicharee', 'chulaluo@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['sponsor','solution_owner','analyst','consultant','coordinator'], ARRAY[]::TEXT[], ''),
('m1768003996717', 'Jarin', 'Julaboot', 'jarinjul@scg.com', '', 'REPCO', '', '', '', ARRAY['project_manager','solution_owner','developer','designer','analyst','tester','architect','consultant','coordinator','role_1766371380234','role_1768004024736'], ARRAY[]::TEXT[], ''),
('m1766378357531', 'Kittikun', 'Chongcharoen', 'kittikch@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','sponsor','solution_owner','developer','consultant','coordinator','role_1766371380234'], ARRAY[]::TEXT[], ''),
('m1766378428718', 'Kontee', 'Thanduan', 'konteet@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','sponsor','solution_owner','developer','designer','analyst','architect','consultant','coordinator'], ARRAY[]::TEXT[], ''),
('m1768181846215', 'Nutratanon', 'Mahakhet', 'nutratam@scg.com', '', 'REPCO', '', '', '', ARRAY['analyst','consultant','role_1766371380234','developer','role_1768181992317','role_1766371538643','project_manager','tester','architect','role_1768004024736'], ARRAY[]::TEXT[], ''),
('m1766378506033', 'Pairote', 'Phruethiworakulchai', 'pairotep@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','sponsor','solution_owner','consultant','coordinator'], ARRAY[]::TEXT[], ''),
('m1766366613850', 'Panit', 'Panitruttiwong', 'panitp@scg.com', '', 'REPCO', '', '', '', ARRAY['project_manager','sponsor','solution_owner','consultant','coordinator'], ARRAY[]::TEXT[], ''),
('m1767943759235', 'Santad', 'Khandipanichakul', 'santadk@scg.com', '', 'REPCO', '', '', '', ARRAY['consultant','solution_owner','role_1768180942042'], ARRAY[]::TEXT[], ''),
('m1766378597017', 'Santipap', ' Umpawanwong', 'santipau@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','sponsor','solution_owner','consultant','coordinator','role_1766371339835'], ARRAY[]::TEXT[], ''),
('m1766378669065', 'Sarun', 'Homsuwan', 'sarunhom@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','sponsor','solution_owner','analyst','architect','consultant','coordinator'], ARRAY[]::TEXT[], ''),
('m1766378770909', 'Suriyachack', 'Archwichai', 'suriyaca@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','sponsor','solution_owner','analyst','architect','consultant'], ARRAY[]::TEXT[], ''),
('m1766378860116', 'Teerasak', 'Swangchokpaha', 'TEERASSW@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','solution_owner','developer','designer','analyst','architect','consultant','coordinator'], ARRAY[]::TEXT[], ''),
('m1766378940864', 'Tiyawut', 'Tiyawongsakul', 'tiyawutt@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','sponsor','solution_owner','analyst','tester','architect','consultant','coordinator','role_1766371339835'], ARRAY[]::TEXT[], ''),
('m1766379018880', 'Tossaporn', 'Rungrojkijjakarn', 'tossapru@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','sponsor','solution_owner','analyst','architect','consultant','coordinator'], ARRAY[]::TEXT[], ''),
('m1766379100265', 'Tutpol', 'Ardsomang', 'tutpola@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','sponsor','solution_owner','analyst','tester','architect','consultant','coordinator','role_1766371339835'], ARRAY[]::TEXT[], ''),
('m1766379175610', 'Uriwan', ' Angkhawey', 'uriwanan@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','sponsor','solution_owner','developer','designer','analyst','tester','architect','consultant','coordinator','role_1766371380234'], ARRAY[]::TEXT[], ''),
('m1766379271053', 'Watcharid', 'Chartsuwan', 'watcchar@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','solution_owner','developer','designer','consultant','coordinator'], ARRAY[]::TEXT[], ''),
('m1766379363759', 'Wee', 'Chabthanom', 'weec@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','sponsor','solution_owner','analyst','architect','consultant','coordinator'], ARRAY[]::TEXT[], ''),
('m1766379443857', 'Wityanant', 'Thongsawai', 'wityanat@scg.com', '', 'REPCO', 'DRS', '', '', ARRAY['project_manager','sponsor','solution_owner','analyst','tester','architect','consultant','coordinator','role_1766371339835','role_1766371380234'], ARRAY[]::TEXT[], '');

-- =====================================================
-- Table: partners
-- Fields: id, name, categories (TEXT[]), location (JSONB), contact (JSONB), scope, agreement_type, agreement_doc, agreement_purpose, contract_value, liabilities, effective_date, expiry_date, notes, agreement (JSONB)
-- =====================================================

INSERT INTO partners (id, name, categories, location, contact, scope, agreement_type, agreement_doc, agreement_purpose, contract_value, liabilities, effective_date, expiry_date, notes, agreement) VALUES
('p1766048785882', ' ZiFiSense Asia', ARRAY['technology','operations'], '{"address":"","city":"Bangkok","country":"TH","latitude":13.806121025290116,"longitude":100.53850167070068}'::JSONB, '{"person":"Mr.002","email":"sales-zifisenseasia@scg.com","phone":""}'::JSONB, 'Smart OFA / Spectrum analysis', '', '', '', NULL, '', '2025-01-01', '2027-12-09', '', '{}'::JSONB),
('p1766045824151', 'AVEVA', ARRAY['marketing','strategy','technology'], '{"address":"","city":"Cambridge","country":"UK","latitude":52.23251656251125,"longitude":0.14979720122106777}'::JSONB, '{"person":"Eric Chen","email":"AVEVATraining@aveva.com","phone":"001800013332"}'::JSONB, 'Platfrom owner
Marketing arm via MSP (UHM on CONNECT is the first product)', 'Contract', '', '', NULL, '', '2025-01-01', '2026-01-01', '', NULL),
('p1766046497129', 'B.GRIMM POWER', ARRAY['strategy','customer'], '{"address":"","city":"Bangkok","country":"TH","latitude":13.749834810467737,"longitude":100.64706896838896}'::JSONB, '{"person":"ดร. เกฮาร์ด ลิงค์ ","email":"Link@bgrimm.com","phone":"+66 (0) 2710 3400"}'::JSONB, 'Customer and Strategic Partner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}'::JSONB),
('p1766049371284', 'Baker Hughes', ARRAY['technology'], '{"address":"","city":"Houston","country":"US","latitude":29.875072663738816,"longitude":-95.53509179287099}'::JSONB, '{"person":"Mr.003","email":"Mr003@BH.com","phone":""}'::JSONB, 'Vibration sensors & system', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}'::JSONB),
('p1766106902687', 'Calibr8', ARRAY['technology','marketing'], '{"address":"","city":"Pasig","country":"PHL","latitude":14.584803557441157,"longitude":121.06261355777151}'::JSONB, '{"person":"Mr.004","email":"team@younicagency.com","phone":"25310-2705"}'::JSONB, 'AVEVA partner ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}'::JSONB),
('p1766050753290', 'CognosDX', ARRAY['technology'], '{"address":"","city":"Chonburi","country":"TH","latitude":12.889974584704,"longitude":100.94477198518632}'::JSONB, '{"person":"Mr.004","email":"info@cognosdx.com","phone":"+44 7785 474123"}'::JSONB, '????', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}'::JSONB),
('p1766047590043', 'Critical Facility (CFT)', ARRAY['technology'], '{"address":"","city":"Changi","country":"SG","latitude":1.3668647297052798,"longitude":103.96854866499326}'::JSONB, '{"person":"ประทีป กิ่งทอง","email":"enquiry@critical-facility.com","phone":""}'::JSONB, 'Advance lightning system', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}'::JSONB),
('p1766107249632', 'Dimension Software', ARRAY['technology'], '{"address":"","city":"Auckland","country":"NZL","latitude":-36.90259748453857,"longitude":174.8098933548698}'::JSONB, '{"person":"Mr.005","email":"info@dimensionsoftwarenz.com","phone":""}'::JSONB, 'Excilentier , Hima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cancel', '{}'::JSONB),
('p1766049671071', 'Ematica', ARRAY['technology'], '{"address":"","city":"Vimercate","country":"IT","latitude":45.59955154388095,"longitude":9.358456297234445}'::JSONB, '{"person":"Pasquale Munno","email":"pasquale.munno@e-matica.it","phone":""}'::JSONB, 'Asset visualization', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}'::JSONB),
('p1766365638529', 'FLOWLAB & SERVICE', ARRAY['marketing'], '{"address":"","city":"Rayong","country":"TH","latitude":12.756206966780082,"longitude":101.17156998564953}'::JSONB, '{"person":"Mr.Surachart","email":"marketing@flowlabservice.co.th","phone":""}'::JSONB, '???', 'MOU', '', 'Marketing Arm', 5, 'No', '2025-01-09', NULL, '', '{}'::JSONB),
('p1766047023566', 'Infinite Control', ARRAY['marketing','cat_1766046566177'], '{"address":"","city":"Bangko","country":"TH","latitude":13.708699834814189,"longitude":100.63516160933118}'::JSONB, '{"person":"K.เต้","email":"info@infinitecontrol.co.th","phone":""}'::JSONB, 'Use for AVEVA Endorsed System Integrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}'::JSONB),
('p1766108775375', 'KMITL', ARRAY['academic','technology'], '{"address":"","city":"Bangkok","country":"TH","latitude":13.73034746583771,"longitude":100.77905841672616}'::JSONB, '{"person":"Dr.xxx","email":"xxx@KMITL.ac.th","phone":""}'::JSONB, 'Cira core(AI Vision) ', 'MOU', '', '', NULL, '', NULL, NULL, '', '{}'::JSONB),
('p1766046058164', 'KMUTT', ARRAY['academic','technology'], '{"address":"","city":"Bangkok","country":"TH","latitude":13.651627513408583,"longitude":100.4972260013833}'::JSONB, '{"person":"ผศ. ดร. เดี่ยว กุลพิรักษ์","email":"diew.koo@kmutt.ac.th","phone":""}'::JSONB, 'MES, ERP, Digital Transformation', '', '', '', NULL, '', '2025-10-01', '2026-03-31', '', '{}'::JSONB),
('p1767662930275', 'N/A', ARRAY['technology'], '{"address":"271 Sukhumvit Road,Map Ta Phut","city":"Rayong","country":"Thailand","latitude":12.75833585241643,"longitude":101.16526779151633}'::JSONB, '{"person":"Panit Panitruttiwong","email":"panitp@scg.com","phone":"0962917532"}'::JSONB, 'Own develop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}'::JSONB),
('p1766047958676', 'Partisan Consulting', ARRAY['technology'], '{"address":"","city":"Bangkok","country":"TH","latitude":13.92723710084108,"longitude":100.54520572497853}'::JSONB, '{"person":"Visitsathapong","email":"c.visitsathapong@partisanconsulting.com","phone":""}'::JSONB, 'Dynamic Process Analysis (TOPO)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}'::JSONB),
('p1766047242928', 'Schneider Electric', ARRAY['technology'], '{"address":"","city":"Bangkok","country":"TH","latitude":13.547989931643428,"longitude":100.66492078329924}'::JSONB, '{"person":"Mr.001","email":"customercare.th@schneider-electric.com","phone":""}'::JSONB, 'Electrical Technology ETAP, Electrical Equipment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}'::JSONB),
('p1766048368363', 'TRIDIAGONAL SOLUTIONS', ARRAY['technology'], '{"address":"","city":"Pune","country":"IND","latitude":18.550904395634735,"longitude":73.77392833453268}'::JSONB, '{"person":"Vaishnavi  Rathi","email":"vaishnavi.rathi@tridiagonal.com","phone":""}'::JSONB, 'CFD / FEA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}'::JSONB),
('p1766108118528', 'Univers', ARRAY['technology'], '{"address":"","city":"Harbourfront Avenue Keppel Bay","country":"SG","latitude":1.2649106901561917,"longitude":103.81828177132789}'::JSONB, '{"person":"Mr.006","email":"006@univers.com","phone":"+65 63519288"}'::JSONB, 'Energy management across renewables, batteries, buildings, and transport.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'O&M solar team', '{}'::JSONB),
('p1766108484372', 'WEDO', ARRAY['technology'], '{"address":"","city":"Bangkok","country":"TH","latitude":13.80432723974654,"longitude":100.53846665879145}'::JSONB, '{"person":"Mr.007","email":"WEDO@scg.com","phone":""}'::JSONB, 'MCA sensors', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '{}'::JSONB);

-- =====================================================
-- Table: projects
-- Fields: id, partner_id, name, scope, expectation, start_time, end_time, cost, progress, phase, team_members (JSONB), kpis (JSONB), market_status, profitability_status, scalability_status, resource_status, technology_status, budget_status, risk_status, schedule_status
-- =====================================================

INSERT INTO projects (id, partner_id, name, scope, expectation, start_time, end_time, cost, progress, phase, team_members, kpis, market_status, profitability_status, scalability_status, resource_status, technology_status, budget_status, risk_status, schedule_status) VALUES
('proj1766363701827', 'p1766045824151', 'UHM on AVEVA CONNECT', 'AVEVA MSP program for', 'AVEVA marketing arm to increase revenue, start from UHM and extend to other solutions', '2025-10-01', '2026-03-31', 0, 25, 'Incubate', '[{"memberId":"m1766379100265","roleId":"project_manager","fteAllocation":[0.1,0.2,0.2,0.3,0,0,0,0,0,0,0,0]},{"memberId":"m1766379363759","roleId":"sponsor","fteAllocation":[0,0,0.1,0.1,0,0,0,0,0,0,0,0]},{"memberId":"m1768003996717","roleId":"role_1768004024736","fteAllocation":[0,0,0.3,0.3,0,0,0,0,0,0,0,0]}]'::JSONB, '[]'::JSONB, 'Green', 'Green', 'Green', 'Yellow', 'Green', 'Yellow', 'Green', 'Yellow'),
('proj1767942241112', 'p1767662930275', 'FITOPO-AI Powered : Dynamic Process Analysis', 'MVP without AI as Aj.Lek MVP Jan-2026
Go-live AI-powered within Dec-2026
', '', '2025-10-09', '2026-12-25', 0, 12, 'Incubate', '[{"memberId":"m1767942011978","roleId":"analyst","fteAllocation":[0.1,0.1,0.3,0.3,0.1,0,0,0,0,0,0,0.1]},{"memberId":"m1767942011978","roleId":"developer","fteAllocation":[0.2,0.2,0.2,0.3,0.3,0.2,0.2,0.3,0.2,0.3,0.3,0.4]},{"memberId":"m1767943759235","roleId":"role_1768180942042","fteAllocation":[0.2,0.1,0.2,0.3,0.1,0.1,0.2,0.1,0.1,0.2,0.2,0.3]},{"memberId":"m1768181846215","roleId":"developer","fteAllocation":[0,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1]},{"memberId":"m1766371530200","roleId":"role_1766371538643","fteAllocation":[0,0,0,0,0,0,0,0,0,0,0.1,0.1]},{"memberId":"m1768181846215","roleId":"role_1768181992317","fteAllocation":[0,0,0,0,0,0,0,0,0,0,0.1,0.1]}]'::JSONB, '[]'::JSONB, 'Green', 'Green', 'Green', 'Green', 'Green', 'Green', 'Green', 'Green'),
('proj1767944282283', 'p1767662930275', 'Process Optimization :  TwinD', 'Build application as commit with customer
Design approval from customer > Dec-2025
MVP > Q1-2026
Develop 6 sprints [1 month/sprint] > 3-2026
UAT > Deploy > Trainining > go-live Q1-2027
', '', '2025-11-01', '2027-01-31', 0, 10, 'Incubate', '[{"memberId":"m1766378940864","roleId":"project_manager","fteAllocation":[0.2,0.2,0.3,0.3,0.2,0.2,0.3,0.2,0.2,0.3,0.3,0.4]},{"memberId":"m1767942011978","roleId":"coordinator","fteAllocation":[0.1,0.2,0.3,0.3,0.2,0.2,0.3,0.2,0.2,0.3,0.3,0.4]}]'::JSONB, '[]'::JSONB, 'Green', 'Green', 'Yellow', 'Yellow', 'Green', 'Green', 'Green', 'Green'),
('proj1766364449149', 'p1766047590043', 'BOLTS', 'Lightning detection system
Waiting AOT ตอบหนังสือทวงถาม
ไปต่อหรือพอแค่นี้', 'New business', '2024-01-22', '2026-03-31', 3000000, 90, 'Introduction', '[]'::JSONB, '[]'::JSONB, 'Yellow', 'Green', 'Green', 'Yellow', 'Green', 'Green', 'Green', 'Yellow'),
('proj1766364232371', 'p1766047023566', 'MOU with Infifnite', 'MOU >> ???', '', '2025-06-30', '2026-05-31', 0, 100, 'Ideate', '[]'::JSONB, '[]'::JSONB, 'Green', 'Green', 'Green', 'Green', 'Green', 'Green', 'Green', 'Green'),
('proj1766364663036', 'p1766045824151', 'Romeo > RTO (Real Time Optimization)', 'Study and find opportunity', 'Discuss with B.Grimm for use-case
> Postpone project to next year Y2026 [บ่อวิน]
> GMEC GMPD', '2025-03-01', '2025-07-16', 0, 10, 'Ideate', '[]'::JSONB, '[]'::JSONB, 'Yellow', 'Yellow', 'Green', 'Yellow', 'Green', 'Yellow', 'Green', 'Red'),
('proj1767659048999', 'p1766049371284', 'Baker Hughes MOU Project', 'Business partner
1. Joke deal on boiler with Aditaya', 'Completed MOU signed', '2025-10-01', '2026-01-30', 0, 20, 'Ideate', '[]'::JSONB, '[]'::JSONB, 'Yellow', 'Yellow', 'Yellow', 'Yellow', 'Green', 'Green', 'Green', 'Yellow'),
('proj1768181455223', 'p1767662930275', 'UHM Version2026, Revsion01', '1. Improvement on built-in case management. (Phase 1)
2. Expend feature of statistic analytics  (Phase 2)', '', '2026-01-01', '2026-12-25', 0, 1, 'Incubate', '[{"memberId":"m1768003996717","roleId":"developer","fteAllocation":[0.1,0.1,0.1,0.1,0.1,0.1,0,0,0,0,0,0]},{"memberId":"m1768181846215","roleId":"developer","fteAllocation":[0.4,0.4,0.4,0.4,0,0,0,0,0,0,0,0]},{"memberId":"m1768181846215","roleId":"role_1768181992317","fteAllocation":[0.1,0.1,0.1,0.1,0.1,0,0,0,0,0,0,0]}]'::JSONB, '[]'::JSONB, 'Green', 'Yellow', 'Green', 'Yellow', 'Green', 'Yellow', 'Green', 'Green'),
('proj1768182405397', 'p1767662930275', 'SCG IT internal audit', 'SCG IT internal audit', '', '2026-01-01', '2026-09-30', 0, 5, 'Ideate', '[{"memberId":"m1768003996717","roleId":"solution_owner","fteAllocation":[0.1,0.2,0.1,0.1,0.1,0.1,0.1,0.2,0.1,0,0,0]},{"memberId":"m1766371530200","roleId":"role_1766371538643","fteAllocation":[0.1,0.2,0.1,0.1,0.1,0.1,0.1,0.2,0.1,0,0,0]}]'::JSONB, '[]'::JSONB, 'Green', 'Green', 'Green', 'Green', 'Green', 'Green', 'Green', 'Green');

-- =====================================================
-- End of Import Script
-- =====================================================

-- Notes:
-- 1. All camelCase field names have been converted to snake_case
-- 2. Arrays are represented using PostgreSQL ARRAY syntax
-- 3. JSONB fields are properly cast with ::JSONB
-- 4. NULL values are used where data is missing
-- 5. Single quotes in text are not escaped as there are none in the source data
-- 6. Empty strings are preserved as ''
-- 7. Empty arrays use ARRAY[]::TEXT[] or '[]'::JSONB syntax
