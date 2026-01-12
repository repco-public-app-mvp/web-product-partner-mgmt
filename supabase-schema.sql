-- Product and Partnership Management - Supabase Schema
-- Run this SQL in Supabase SQL Editor

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- ========== CATEGORIES TABLE ==========
CREATE TABLE IF NOT EXISTS categories (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    color TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ========== ROLES TABLE ==========
CREATE TABLE IF NOT EXISTS roles (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    color TEXT NOT NULL,
    description TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ========== MEMBERS TABLE ==========
CREATE TABLE IF NOT EXISTS members (
    id TEXT PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT,
    phone TEXT,
    company TEXT,
    department TEXT,
    title TEXT,
    location TEXT,
    roles TEXT[], -- Array of role IDs
    skills TEXT[],
    notes TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ========== PARTNERS TABLE ==========
CREATE TABLE IF NOT EXISTS partners (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    categories TEXT[], -- Array of category IDs
    location JSONB, -- {address, city, country, latitude, longitude}
    contact JSONB, -- {person, email, phone}
    scope TEXT,
    agreement_type TEXT,
    agreement_doc TEXT,
    agreement_purpose TEXT,
    contract_value NUMERIC,
    liabilities TEXT,
    effective_date DATE,
    expiry_date DATE,
    notes TEXT,
    agreement JSONB DEFAULT '{}',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ========== PROJECTS TABLE ==========
CREATE TABLE IF NOT EXISTS projects (
    id TEXT PRIMARY KEY,
    partner_id TEXT REFERENCES partners(id) ON DELETE SET NULL,
    name TEXT NOT NULL,
    scope TEXT,
    expectation TEXT,
    start_time DATE,
    end_time DATE,
    cost NUMERIC DEFAULT 0,
    progress INTEGER DEFAULT 0,
    phase TEXT,
    team_members JSONB DEFAULT '[]', -- Array of {memberId, roleId, fteAllocation[]}
    kpis JSONB DEFAULT '[]',
    market_status TEXT,
    profitability_status TEXT,
    scalability_status TEXT,
    resource_status TEXT,
    technology_status TEXT,
    budget_status TEXT,
    risk_status TEXT,
    schedule_status TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ========== INDEXES ==========
CREATE INDEX IF NOT EXISTS idx_members_email ON members(email);
CREATE INDEX IF NOT EXISTS idx_projects_partner ON projects(partner_id);
CREATE INDEX IF NOT EXISTS idx_partners_name ON partners(name);

-- ========== ROW LEVEL SECURITY (RLS) ==========
-- Enable RLS on all tables
ALTER TABLE categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE roles ENABLE ROW LEVEL SECURITY;
ALTER TABLE members ENABLE ROW LEVEL SECURITY;
ALTER TABLE partners ENABLE ROW LEVEL SECURITY;
ALTER TABLE projects ENABLE ROW LEVEL SECURITY;

-- Create policies to allow public access (you can restrict this later)
CREATE POLICY "Enable read access for all users" ON categories FOR SELECT USING (true);
CREATE POLICY "Enable insert access for all users" ON categories FOR INSERT WITH CHECK (true);
CREATE POLICY "Enable update access for all users" ON categories FOR UPDATE USING (true);
CREATE POLICY "Enable delete access for all users" ON categories FOR DELETE USING (true);

CREATE POLICY "Enable read access for all users" ON roles FOR SELECT USING (true);
CREATE POLICY "Enable insert access for all users" ON roles FOR INSERT WITH CHECK (true);
CREATE POLICY "Enable update access for all users" ON roles FOR UPDATE USING (true);
CREATE POLICY "Enable delete access for all users" ON roles FOR DELETE USING (true);

CREATE POLICY "Enable read access for all users" ON members FOR SELECT USING (true);
CREATE POLICY "Enable insert access for all users" ON members FOR INSERT WITH CHECK (true);
CREATE POLICY "Enable update access for all users" ON members FOR UPDATE USING (true);
CREATE POLICY "Enable delete access for all users" ON members FOR DELETE USING (true);

CREATE POLICY "Enable read access for all users" ON partners FOR SELECT USING (true);
CREATE POLICY "Enable insert access for all users" ON partners FOR INSERT WITH CHECK (true);
CREATE POLICY "Enable update access for all users" ON partners FOR UPDATE USING (true);
CREATE POLICY "Enable delete access for all users" ON partners FOR DELETE USING (true);

CREATE POLICY "Enable read access for all users" ON projects FOR SELECT USING (true);
CREATE POLICY "Enable insert access for all users" ON projects FOR INSERT WITH CHECK (true);
CREATE POLICY "Enable update access for all users" ON projects FOR UPDATE USING (true);
CREATE POLICY "Enable delete access for all users" ON projects FOR DELETE USING (true);

-- ========== TRIGGERS FOR UPDATED_AT ==========
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_categories_updated_at BEFORE UPDATE ON categories
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_roles_updated_at BEFORE UPDATE ON roles
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_members_updated_at BEFORE UPDATE ON members
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_partners_updated_at BEFORE UPDATE ON partners
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_projects_updated_at BEFORE UPDATE ON projects
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
