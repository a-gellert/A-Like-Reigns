local M = {}

M.code = "en"
M.name = "English"
M.short_name = "EN"

M.ui = {
	quarter = "Quarter %d",
	game_over_header = "YOU'RE FIRED!",
	game_over_default_title = "Career Over",
	game_over_default_desc = "The board of directors has relieved you of your executive duties.",
	game_over_score = "You survived: %d Quarters",
	btn_revive = "Keep CEO Seat (+35%)\n(Watch Ad)",
	btn_restart = "New Startup (Restart)",
	footer_hint = "Swipe left/right or press A / D",
	choice_left_default = "NO",
	choice_right_default = "YES"
}

M.characters = {
	hr_kristina = { name = "Christina", sprite = "hr_kristina" },
	lead_artem = { name = "Arthur", sprite = "lead_artem" },
	sales_igor = { name = "Ian", sprite = "sales_igor" },
	investor_mark = { name = "Mark", sprite = "investor_mark" },
	zavhoz_mikhalych = { name = "Mike", sprite = "zavhoz_mikhalych" }
}

M.deaths = {
	team = {
		min = {
			title = "Mass Resignation",
			desc = "Key engineers resigned simultaneously. Nobody is left to build software or support clients."
		},
		max = {
			title = "Total Anarchy",
			desc = "Endless paid vacations and zero deadlines. The company completely stopped delivering results."
		}
	},
	product = {
		min = {
			title = "Service Collapse",
			desc = "Production database corrupted beyond repair. Users and enterprise clients have abandoned the platform."
		},
		max = {
			title = "Feature Paralysis",
			desc = "Years were spent pursuing theoretical architectural perfection. Faster competitors swallowed the market."
		}
	},
	money = {
		min = {
			title = "Bankruptcy",
			desc = "Zero cash runway. Cloud servers shut down for non-payment and payroll bounced."
		},
		max = {
			title = "Tax Audit",
			desc = "Suspicious hyper-profit triggered an aggressive regulatory tax audit. All company accounts are frozen."
		}
	},
	board = {
		min = {
			title = "Vote of No Confidence",
			desc = "The board of directors voted unanimously to remove you from the CEO position."
		},
		max = {
			title = "Corporate Buyout",
			desc = "A tech conglomerate acquired 100% of the firm. The board replaced you with their own executive."
		}
	}
}

M.cards = {
	tut_01 = {
		text = "Welcome to the CEO seat! Are you ready to make tough executive decisions and manage resources?",
		left = "I'll be a benevolent leader",
		right = "Business comes first"
	},
	tut_02 = {
		text = "Above are 4 pillars: Team, Product, Money, and Board. If any bar hits 0 or 100, you will be ousted!",
		left = "Understood, maintain balance",
		right = "Risk it for rapid growth"
	},
	tut_03 = {
		text = "The dots above each metric indicate the impact of your decisions. Ready for your first quarter?",
		left = "Prudent expansion",
		right = "Aggressive scaling"
	},

	quest_sec_01 = {
		text = "A critical vulnerability was found in our payment gateway. Hackers demand a ransom for nondisclosure.",
		left = "Pay ransom quietly",
		right = "Refuse and patch exploit"
	},
	quest_sec_02_paid = {
		text = "The hackers leaked customer data anyway and asked for more. The board is furious about the secret payment.",
		left = "Hire top security auditors",
		right = "Deny all allegations publicly"
	},
	quest_sec_02_disclose = {
		text = "Public disclosure caused panic among users. Key enterprise clients demand immediate contract revisions.",
		left = "Offer 3 months free service",
		right = "Stand firm on SLA terms"
	},
	quest_sec_03 = {
		text = "Security operations insists on enforcing mandatory hardware 2FA and weekly penetration testing.",
		left = "Enforce strict security",
		right = "Keep policies flexible"
	},
	quest_sec_04 = {
		text = "Following the incident response, our engineering leads are exhausted. Morale needs rebuilding.",
		left = "Grant paid recovery leave",
		right = "Issue overtime bonuses"
	},

	quest_ent_01 = {
		text = "A major bank is ready to sign a multi-million dollar deal, but requires on-premise installation.",
		left = "Decline: stay pure SaaS",
		right = "Sign the enterprise deal"
	},
	quest_ent_reject = {
		text = "The board is disappointed by the lost revenue opportunity and demands an alternate growth plan.",
		left = "Expand mid-market sales",
		right = "Cut operational burn rate"
	},
	quest_ent_02 = {
		text = "The bank submitted 100 custom specification requests. Core SaaS development has completely stalled.",
		left = "Form dedicated squad",
		right = "Push back on client scope"
	},
	quest_ent_03 = {
		text = "The bank's compliance audit raised minor flags and threatens to freeze the next milestone payment.",
		left = "Fix all flags immediately",
		right = "Negotiate compliance waiver"
	},
	quest_ent_04 = {
		text = "Successful enterprise deployment opened doors to several Fortune 500 prospects.",
		left = "Pivot entirely to Enterprise",
		right = "Maintain balanced SaaS focus"
	},

	quest_hunt_01 = {
		text = "A venture-backed competitor opened nearby and is offering 2x salaries to our senior engineers.",
		left = "Match salaries with equity",
		right = "Rely on culture & mission"
	},
	quest_hunt_loss = {
		text = "Two key system architects resigned. Juniors are struggling to navigate undocumented legacy code.",
		left = "Hire elite consultants",
		right = "Pause releases for documentation"
	},
	quest_hunt_02 = {
		text = "The engineers stayed, but non-technical staff now demand equitable compensation increases.",
		left = "Raise wages across the board",
		right = "Explain market rate realities"
	},
	quest_hunt_03 = {
		text = "Our payroll burn spiked. The board recommends opening a satellite engineering hub in a lower-cost region.",
		left = "Open satellite engineering hub",
		right = "Keep single core headquarters"
	},
	quest_hunt_04 = {
		text = "To prevent future poaching waves, HR recommends implementing structured career progression ladders.",
		left = "Implement formal ladders",
		right = "Keep flat structure"
	},

	quest_bf_01 = {
		text = "An upcoming seasonal sale will increase peak traffic 10x. Our infrastructure might collapse.",
		left = "Over-provision cloud capacity",
		right = "Optimize code without spending"
	},
	quest_bf_02_crash = {
		text = "The checkout database stalled at midnight! Shoppers cannot pay and social media is raging.",
		left = "Restart in degraded mode",
		right = "Wait for clean recovery"
	},
	quest_bf_02_stable = {
		text = "Peak traffic handled flawlessly with 100% uptime. Quarterly revenue beat targets by 40%.",
		left = "Reinvest revenue in R&D",
		right = "Distribute shareholder dividend"
	},
	quest_bf_03 = {
		text = "Server room cooling and electrical backup units ran at redline limits and suffered hardware damage.",
		left = "Install industrial cooling",
		right = "Deploy temporary fans"
	},
	quest_bf_04 = {
		text = "Following the massive peak season, the board is reviewing our long-term infrastructure strategy.",
		left = "Migrate to serverless stack",
		right = "Rent dedicated bare-metal racks"
	},

	quest_vc_01 = {
		text = "A top venture fund offers $5M Series A funding in exchange for 35% equity and two board seats.",
		left = "Decline: retain full control",
		right = "Accept Series A terms"
	},
	quest_vc_boot = {
		text = "Without external venture capital, we must achieve cash-flow positive operations immediately.",
		left = "Increase subscription pricing",
		right = "Launch paid consulting tier"
	},
	quest_vc_02 = {
		text = "The new board members demand aggressive triple-digit growth in active users next quarter.",
		left = "Triple marketing ad spend",
		right = "Bet on viral organic growth"
	},
	quest_vc_03 = {
		text = "Rapid expansion requires hiring 20 specialists this month. There is a risk of diluting company culture.",
		left = "Maintain strict hiring bar",
		right = "Fast-track onboarding process"
	},
	quest_vc_04 = {
		text = "Rapid team growth caused operational friction and frequent codebase merge conflicts.",
		left = "Split into autonomous squads",
		right = "Centralize architecture control"
	},

	quest_auto_01 = {
		text = "Engineering proposes deploying automated triage models for first-tier customer support tickets.",
		left = "Keep human specialists",
		right = "Deploy automated triage"
	},
	quest_auto_human = {
		text = "High-touch human customer support earned us industry awards and exceptional retention rates.",
		left = "Package as premium 24/7 tier",
		right = "Maintain standard service"
	},
	quest_auto_02 = {
		text = "Automated triage resolves 80% of routine tickets, but struggles with nuanced enterprise edge cases.",
		left = "Introduce human validation",
		right = "Restrict AI scope strictly"
	},
	quest_auto_03 = {
		text = "Customer support team members are anxious about potential automated layoffs.",
		left = "Upskill team into QA/Product",
		right = "Streamline team headcount"
	},
	quest_auto_04 = {
		text = "The board is impressed by the reduced operating overhead following automated workflows.",
		left = "Reinvest savings in product",
		right = "Capture net margin profit"
	},

	quest_ip_01 = {
		text = "A legacy competitor filed a patent lawsuit claiming our core sync algorithm infringes their patent.",
		left = "Fight in court to invalidate",
		right = "Negotiate licensing settlement"
	},
	quest_ip_fight = {
		text = "To win in court, lead engineers must dedicate weeks to preparing prior-art technical documentation.",
		left = "Commit engineering to legal",
		right = "Retain outside expert witnesses"
	},
	quest_ip_settle = {
		text = "The settlement eliminated legal risks, but requires ongoing quarterly royalty payments.",
		left = "Clarify position to clients",
		right = "Keep settlement terms confidential"
	},
	quest_ip_03 = {
		text = "We completely rewrote the sync engine — it is now 3x faster with zero proprietary overlap.",
		left = "File defensive patent claims",
		right = "Publish as open standard"
	},

	quest_ref_01 = {
		text = "Accumulated technical debt is halving feature velocity. Engineering requests a full refactoring sprint.",
		left = "Authorize refactoring sprint",
		right = "Keep shipping commercial features"
	},
	quest_ref_debt = {
		text = "Production bugs led to customer complaints. Sales is spending time appeasing clients instead of selling.",
		left = "Emergency bug fixing sprint",
		right = "Offer subscription discounts"
	},
	quest_ref_02 = {
		text = "While backend refactoring continues, clients are demanding visible interface enhancements.",
		left = "Split sprint: backend & UI",
		right = "Finish backend core first"
	},
	quest_ref_03 = {
		text = "Modular architecture migration is complete. Build and deployment times dropped drastically.",
		left = "Implement CI/CD pipeline",
		right = "Stick to weekly release cycles"
	},
	quest_ref_04 = {
		text = "System reliability metrics reached an industry all-time high. Investors praise product maturity.",
		left = "Prepare international launch",
		right = "Consolidate domestic market"
	},

	quest_off_01 = {
		text = "Our office lease is expiring. Half the team wants a modern collaborative hub, half wants full remote.",
		left = "Transition to full remote",
		right = "Lease new collaborative hub"
	},
	quest_off_remote = {
		text = "Full remote saved significant real estate overhead, but cross-team coordination requires structure.",
		left = "Schedule recurring syncs",
		right = "Adopt async tracking workflows"
	},
	quest_off_hub = {
		text = "The new office hub boosted team synergy, but monthly facility maintenance costs increased.",
		left = "Sublease unused desk space",
		right = "Keep extra room for growth"
	},
	quest_off_03 = {
		text = "The board evaluates the outcome of the workspace reorganization strategy.",
		left = "Approve permanent hybrid policy",
		right = "Return to strict office rules"
	},

	filler_01 = {
		text = "Central heating failed in our office wing. Room temperature is dropping rapidly.",
		left = "Send everyone to work from home",
		right = "Purchase heavy-duty space heaters"
	},
	filler_02 = {
		text = "Employees are requesting ergonomic standing desks to improve posture and productivity.",
		left = "Decline: budget is tight",
		right = "Equip ergonomic workstations"
	},
	filler_03 = {
		text = "Our office kitchen food and coffee supplier increased their pricing by 30%.",
		left = "Switch to budget suppliers",
		right = "Maintain current food quality"
	},
	filler_04 = {
		text = "The commercial landlord offers a 15% discount for committing to a 3-year lease extension.",
		left = "Maintain month-to-month flexibility",
		right = "Sign the 3-year extension"
	},
	filler_05 = {
		text = "Developer laptop hardware is outdated: compiling core codebases takes excessive time.",
		left = "Defer upgrades until next year",
		right = "Upgrade developer hardware"
	},
	filler_06 = {
		text = "Our cloud infrastructure provider announced a price increase on database storage tiers.",
		left = "Begin migration to another cloud",
		right = "Stay and optimize data usage"
	},
	filler_07 = {
		text = "A critical security vulnerability was announced in a major open-source library we depend on.",
		left = "Write custom in-house module",
		right = "Wait for official security patch"
	},
	filler_08 = {
		text = "An intern accidentally executed a data migration script on the staging database, wiping test data.",
		left = "Restrict database access keys",
		right = "Conduct educational retrospective"
	},
	filler_09 = {
		text = "On-call engineers request formal standby compensation for weekend incident escalations.",
		left = "Introduce standby compensation",
		right = "Keep inside base salary scope"
	},
	filler_10 = {
		text = "Engineering proposes mandatory rigorous code reviews. Quality will rise, but velocity will dip.",
		left = "Enforce strict review policy",
		right = "Keep lightweight author reviews"
	},
	filler_11 = {
		text = "Our database engine version reached End-of-Life and will no longer receive vendor security patches.",
		left = "Plan structured version migration",
		right = "Postpone to next quarter"
	},
	filler_12 = {
		text = "Engineering leads propose setting a mandatory 85% automated test coverage threshold for pull requests.",
		left = "Enforce 85% test threshold",
		right = "Keep existing test practices"
	},
	filler_13 = {
		text = "Inflation has eroded purchasing power. The team expects an annual cost-of-living salary adjustment.",
		left = "Execute full cost-of-living hike",
		right = "Offer performance bonuses only"
	},
	filler_14 = {
		text = "Internal surveys reveal that 70% of staff prefer a hybrid schedule with 2 mandatory office days.",
		left = "Approve hybrid schedule",
		right = "Mandate 5 days in office"
	},
	filler_15 = {
		text = "HR proposes a monthly wellness and fitness stipend for employee health support.",
		left = "Approve wellness stipend",
		right = "Focus on direct bonuses"
	},
	filler_16 = {
		text = "Marketing proposes holding an offsite strategic team retreat to build inter-departmental alignment.",
		left = "Hold meeting in boardroom",
		right = "Approve offsite retreat"
	},
	filler_17 = {
		text = "Product and Sales disagree on roadmap feature priorities for the upcoming quarter.",
		left = "Back Engineering & Product",
		right = "Back Sales & Revenue"
	},
	filler_18 = {
		text = "Leading universities reached out to establish a summer software engineering internship pipeline.",
		left = "Launch internship program",
		right = "Focus solely on senior hires"
	},
	filler_19 = {
		text = "Engineers requested sponsorship to attend and speak at an international tech conference.",
		left = "Cover conference expenses",
		right = "Decline budget request"
	},
	filler_20 = {
		text = "A prospective enterprise client demands a $100,000 hourly penalty clause for service downtime.",
		left = "Reject punitive SLA penalties",
		right = "Accept clause to close deal"
	},
	filler_21 = {
		text = "Major industry expo organizers offer title sponsorship placement for a substantial upfront fee.",
		left = "Book standard exhibitor booth",
		right = "Secure title sponsorship"
	},
	filler_22 = {
		text = "Our primary competitor launched a 50% discount campaign to steal market share.",
		left = "Maintain premium price point",
		right = "Match discounts aggressively"
	},
	filler_23 = {
		text = "Third-party system integrators request increasing their referral commission from 10% to 20%.",
		left = "Maintain 10% commission rate",
		right = "Increase partner commission"
	},
	filler_24 = {
		text = "A major enterprise client is two months overdue on billing while continuing to utilize our platform.",
		left = "Suspend account access",
		right = "Extend grace period & negotiate"
	},
	filler_25 = {
		text = "Sales identified strong inbound demand for our platform across international markets.",
		left = "Localize product & expand",
		right = "Focus on domestic core"
	},
	filler_26 = {
		text = "Product suggests tightening free tier limits to accelerate conversion into paid subscriptions.",
		left = "Maintain generous free tier",
		right = "Lower free tier limits"
	},
	filler_27 = {
		text = "The board of directors is pressing for semi-annual dividend payouts rather than R&D reinvestment.",
		left = "Convince board to reinvest",
		right = "Distribute dividend payout"
	},
	filler_28 = {
		text = "A large tech corporation informally expressed interest in an outright acquisition of our company.",
		left = "Enter exploratory discussions",
		right = "Decline acquisition interest"
	},
	filler_29 = {
		text = "A veteran tech executive offers to join our advisory board in exchange for a modest equity grant.",
		left = "Appoint to advisory board",
		right = "Decline advisor offer"
	},
	filler_30 = {
		text = "It is time to approve the annual executive management bonus compensation pool.",
		left = "Trim executive bonuses",
		right = "Approve full bonus pool"
	},
	filler_31 = {
		text = "Institutional venture investors require a formal environmental and social governance compliance audit.",
		left = "Draft standard compliance report",
		right = "Conduct comprehensive audit"
	},
	filler_32 = {
		text = "Early employees are requesting permission for partial secondary liquidity of their vested stock options.",
		left = "Permit partial secondary sale",
		right = "Restrict secondary transactions"
	},
	filler_33 = {
		text = "A leading business publication requested an in-depth interview regarding our financial sustainability.",
		left = "Grant on-the-record interview",
		right = "Decline interview request"
	},
	filler_34 = {
		text = "Security identified several unassigned visitor keycards logged in the office security registry.",
		left = "Conduct full access audit",
		right = "Issue informal warning"
	},
	filler_35 = {
		text = "Server room Uninterruptible Power Supply (UPS) batteries have reached end of manufacturer lifecycle.",
		left = "Replace with fresh battery units",
		right = "Postpone battery replacement"
	},
	filler_36 = {
		text = "Engineering proposes launching a public Bug Bounty vulnerability disclosure program.",
		left = "Launch public Bug Bounty",
		right = "Rely on internal reviews"
	},
	filler_37 = {
		text = "Employee referral initiatives brought several talented hires. Referral bonuses are due for payment.",
		left = "Pay referral bonuses in full",
		right = "Defer payout to next month"
	}
}

return M
