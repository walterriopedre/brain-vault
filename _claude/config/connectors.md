# Connectors & Integrations

This file documents which external connectors are configured for this vault, what they
enable, and any team-specific notes about their use.

**Fill in the "Configured connectors" section during setup. Leave unconfigured connectors
blank — do not remove them from the list.**

---

## Configured connectors

List each connector your team has set up. Add a row when a new connector is activated.

| Connector | Status | Configured by | Notes |
|-----------|--------|--------------|-------|
| *(none yet — add rows as connectors are set up)* | | | |

---

## Rules for connector use

**CLI before connector.** If a task can be done with a shell command, script, or file read,
do that. Use a connector only when the data genuinely lives in an external system and cannot
be brought into the vault by other means.

**Connectors are read-first.** Default to reading from external systems. Writing back
(sending emails, updating CRM records, modifying SharePoint) requires explicit user
confirmation. Never write to an external system without asking first.

**Never store credentials in the vault.** Connectors authenticate via OAuth tokens or
service accounts managed outside this folder. This file records what is connected and
what it is used for — not the secrets.

**Token cost awareness.** Connector calls that return large payloads (a full email inbox,
an entire SharePoint library) consume tokens. Filter before fetching — ask for the 10 most
recent items, not the full history.

---

## Available connector catalog

These connectors are known to work with Claude Code. Availability depends on your
organization's configuration and admin approvals.

### Communication & Calendar

**Microsoft 365** (Outlook, Calendar, Teams)
- Read: emails, calendar events, Teams messages, contacts
- Write: draft emails (confirm before sending), create calendar events
- Setup: MCP server `microsoft365` — requires M365 admin to grant app permissions
- Token cost: Medium — filter by date range and folder, not full inbox

**Google Workspace** (Gmail, Calendar, Meet)
- Read: emails, calendar events, contacts
- Write: draft emails (confirm before sending), create calendar events
- Setup: MCP server `google-workspace` — requires Google Workspace admin approval
- Token cost: Medium — filter before fetching

**Slack**
- Read: channel messages, threads, mentions
- Write: draft messages (confirm before sending)
- Setup: MCP server `slack` — requires Slack workspace admin to install
- Token cost: Low to medium — fetch by channel and time window

---

### Documents & Files

**SharePoint / OneDrive**
- Read: documents, lists, site pages
- Write: create and update documents (confirm before writing)
- Setup: included in Microsoft 365 MCP — same admin approval
- Token cost: Medium — fetch specific documents by URL, not full libraries

**Google Drive / Docs / Sheets**
- Read: documents, spreadsheets, presentations
- Write: create and update documents (confirm)
- Setup: included in Google Workspace MCP
- Token cost: Low to medium

**PDF reader**
- Read: any PDF file on disk — Claude Code handles PDFs natively via the Read tool
- Write: not applicable
- Setup: none — available by default
- Token cost: Low to medium depending on document length

**Excel / Google Sheets**
- Read: spreadsheet data — Claude Code can read .csv natively; .xlsx requires Python
- Write: append to sheets (confirm before writing)
- Setup for .xlsx: `pip3 install openpyxl pandas` — then run via Python script
- Token cost: Low for structured data; filter to relevant sheets/ranges

---

### Project & Work Tracking

**GitHub**
- Read: issues, PRs, commits, repo contents
- Write: create issues, comment on PRs, close issues
- Setup: `gh auth login` — GitHub CLI, no MCP server needed
- Token cost: Low

**Jira**
- Read: tickets, sprints, boards
- Write: create and update tickets (confirm)
- Setup: MCP server `jira` — requires Atlassian API token
- Token cost: Low to medium

**Linear**
- Read: issues, cycles, projects
- Write: create and update issues (confirm)
- Setup: MCP server `linear` — requires Linear API key
- Token cost: Low

---

### CRM & Sales

**Salesforce**
- Read: accounts, contacts, opportunities, cases
- Write: update records (confirm — CRM is system of record)
- Setup: MCP server `salesforce` — requires Salesforce admin to create connected app
- Token cost: Medium — filter by owner and date, not full org

**HubSpot**
- Read: contacts, deals, companies, emails
- Write: update records, log activities (confirm)
- Setup: MCP server `hubspot` — requires HubSpot API key
- Token cost: Medium

---

### Finance & ERP

**QuickBooks**
- Read: invoices, bills, accounts, reports
- Write: create draft invoices (confirm — accounting system is authoritative)
- Setup: MCP server `quickbooks` — requires QuickBooks admin approval
- Token cost: Low to medium

**NetSuite / SAP** (advanced)
- These require custom connector development — no standard MCP server available
- Workaround: export reports to CSV/Excel and read them into the vault
- Token cost: Depends on export size

---

### HR & People Systems

**Workday / BambooHR / Rippling** (advanced)
- No standard MCP server — requires custom connector or API integration
- Workaround: export headcount and position reports to CSV, read into vault
- Token cost: Depends on export size

---

### Analytics & BI

**Google Analytics**
- Read: traffic, events, conversions
- Setup: Google Analytics MCP or API — requires GA admin
- Token cost: Low — query for specific metrics and date ranges

**Power BI** (read-only)
- Export report data to CSV and read into vault — no direct MCP available
- Token cost: Depends on export size

---

## Adding a new connector

When you configure a connector:

1. Test it: ask Claude to read one item from the connected system and confirm it works
2. Add a row to the **Configured connectors** table above with the connector name,
   status (active), who set it up, and any relevant notes
3. Document any team-specific rules (e.g., "only read Sales channel in Slack, not HR")
4. Note the token cost tier so the team knows when to filter aggressively

When you remove or disable a connector, update the status to `disabled` and add a note
explaining why — this prevents future confusion about why a connector seems unavailable.
