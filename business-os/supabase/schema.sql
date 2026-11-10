-- REBI Business OS: one-person private CRM storage
-- Run in Supabase SQL Editor in your OWN project.
create table if not exists public.rebi_workspace (
 user_id uuid primary key references auth.users(id) on delete cascade,
 payload jsonb not null default '{}'::jsonb,
 updated_at timestamptz not null default now()
);
alter table public.rebi_workspace enable row level security;
revoke all on public.rebi_workspace from anon;
grant select, insert, update, delete on public.rebi_workspace to authenticated;
drop policy if exists "Users read their own workspace" on public.rebi_workspace;
drop policy if exists "Users create their own workspace" on public.rebi_workspace;
drop policy if exists "Users update their own workspace" on public.rebi_workspace;
drop policy if exists "Users delete their own workspace" on public.rebi_workspace;
create policy "Users read their own workspace" on public.rebi_workspace for select to authenticated using (auth.uid() = user_id);
create policy "Users create their own workspace" on public.rebi_workspace for insert to authenticated with check (auth.uid() = user_id);
create policy "Users update their own workspace" on public.rebi_workspace for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "Users delete their own workspace" on public.rebi_workspace for delete to authenticated using (auth.uid() = user_id);
-- Lock down single-user access by Supabase Auth invitation/disable public sign-ups.
-- RLS limits each authenticated user to their own row, but signup controls are
-- needed to prevent arbitrary users from creating their own workspaces.
