local M = {}

M.characters = {
	hr_kristina = { name = "Кристина", sprite = "hr_kristina" },
	lead_artem = { name = "Артём", sprite = "lead_artem" },
	sales_igor = { name = "Игорь", sprite = "sales_igor" },
	investor_mark = { name = "Марк", sprite = "investor_mark" },
	zavhoz_mikhalych = { name = "Михалыч", sprite = "zavhoz_mikhalych" }
}

M.deaths = {
	team = {
		min = { title = "Массовый уход", desc = "Ведущие специалисты уволились. Некому писать код и поддерживать клиентов." },
		max = { title = "Полная анархия", desc = "Бесконечные отпуска и полное отсутствие дедлайнов. Компания перестала производить что-либо." }
	},
	product = {
		min = { title = "Крах сервиса", desc = "База данных повреждена, архитектура развалилась. Клиенты массово аннулируют подписки." },
		max = { title = "Технический тупик", desc = "Годы ушли на бесконечные рефакторинги и идеальный код. Рынок заняли быстрые конкуренты." }
	},
	money = {
		min = { title = "Банкротство", desc = "Казна пуста, счета за облачные серверы и зарплаты не оплачены. Офис опечатан." },
		max = { title = "Налоговое расследование", desc = "Аномальная прибыль привлекла финансовый надзор. Счета заблокированы до окончания аудита." }
	},
	board = {
		min = { title = "Вотум недоверия", desc = "Совет директоров единогласно проголосовал за вашу немедленную отставку." },
		max = { title = "Поглощение гигантом", desc = "Корпорация выкупила компанию целиком. Совет директоров назначил своего топ-менеджера." }
	}
}

M.cards = {
	-- Onboarding & Tutorials
	{
		id = "tut_01",
		character = "hr_kristina",
		left_choice = { effects = { team = 15, product = 0, money = -10, board = -10 }, next_card_id = "tut_02" },
		right_choice = { effects = { team = -10, product = 5, money = 10, board = 15 }, next_card_id = "tut_02" },
		weight = 100
	},
	{
		id = "tut_02",
		character = "lead_artem",
		left_choice = { effects = { team = 5, product = 5, money = -5, board = 0 }, next_card_id = "tut_03" },
		right_choice = { effects = { team = -5, product = 10, money = 10, board = -5 }, next_card_id = "tut_03" },
		weight = 100
	},
	{
		id = "tut_03",
		character = "investor_mark",
		left_choice = { effects = { team = 5, product = 5, money = 0, board = -5 } },
		right_choice = { effects = { team = -10, product = -5, money = 15, board = 20 } },
		weight = 100
	},

	-- Story Arc: Cyber Security & Data Leak
	{
		id = "quest_sec_01",
		character = "lead_artem",
		left_choice = { effects = { team = -5, product = 5, money = -25, board = -10 }, next_card_id = "quest_sec_02_paid" },
		right_choice = { effects = { team = -15, product = 15, money = -10, board = 15 }, next_card_id = "quest_sec_02_disclose" },
		weight = 20
	},
	{
		id = "quest_sec_02_paid",
		character = "investor_mark",
		left_choice = { effects = { team = 5, product = 10, money = -25, board = 15 }, next_card_id = "quest_sec_03" },
		right_choice = { effects = { team = -15, product = -15, money = 5, board = -25 }, next_card_id = "quest_sec_03" },
		weight = 0
	},
	{
		id = "quest_sec_02_disclose",
		character = "sales_igor",
		left_choice = { effects = { team = 5, product = 10, money = -20, board = -5 }, next_card_id = "quest_sec_03" },
		right_choice = { effects = { team = -10, product = -5, money = 10, board = -15 }, next_card_id = "quest_sec_03" },
		weight = 0
	},
	{
		id = "quest_sec_03",
		character = "lead_artem",
		left_choice = { effects = { team = -15, product = 20, money = -10, board = 10 }, next_card_id = "quest_sec_04" },
		right_choice = { effects = { team = 15, product = -15, money = 5, board = -10 }, next_card_id = "quest_sec_04" },
		weight = 0
	},
	{
		id = "quest_sec_04",
		character = "hr_kristina",
		left_choice = { effects = { team = 20, product = -15, money = -10, board = -5 } },
		right_choice = { effects = { team = 10, product = 5, money = -20, board = 5 } },
		weight = 0
	},

	-- Story Arc: Enterprise Whale Contract
	{
		id = "quest_ent_01",
		character = "sales_igor",
		left_choice = { effects = { team = 15, product = 10, money = -15, board = -20 }, next_card_id = "quest_ent_reject" },
		right_choice = { effects = { team = -15, product = -10, money = 30, board = 25 }, next_card_id = "quest_ent_02" },
		weight = 20
	},
	{
		id = "quest_ent_reject",
		character = "investor_mark",
		left_choice = { effects = { team = 10, product = 15, money = 10, board = -5 } },
		right_choice = { effects = { team = -15, product = -5, money = 20, board = 10 } },
		weight = 0
	},
	{
		id = "quest_ent_02",
		character = "lead_artem",
		left_choice = { effects = { team = -10, product = 15, money = -20, board = 15 }, next_card_id = "quest_ent_03" },
		right_choice = { effects = { team = 15, product = 10, money = -10, board = -15 }, next_card_id = "quest_ent_03" },
		weight = 0
	},
	{
		id = "quest_ent_03",
		character = "sales_igor",
		left_choice = { effects = { team = -20, product = 20, money = 20, board = 10 }, next_card_id = "quest_ent_04" },
		right_choice = { effects = { team = 5, product = -10, money = 10, board = -15 }, next_card_id = "quest_ent_04" },
		weight = 0
	},
	{
		id = "quest_ent_04",
		character = "investor_mark",
		left_choice = { effects = { team = -10, product = 15, money = 25, board = 20 } },
		right_choice = { effects = { team = 15, product = 10, money = 10, board = -5 } },
		weight = 0
	},

	-- Story Arc: Headhunting & Retention
	{
		id = "quest_hunt_01",
		character = "hr_kristina",
		left_choice = { effects = { team = 20, product = 10, money = -25, board = -15 }, next_card_id = "quest_hunt_02" },
		right_choice = { effects = { team = -20, product = -15, money = 15, board = 5 }, next_card_id = "quest_hunt_loss" },
		weight = 20
	},
	{
		id = "quest_hunt_loss",
		character = "lead_artem",
		left_choice = { effects = { team = -5, product = 20, money = -25, board = -10 } },
		right_choice = { effects = { team = 15, product = -20, money = -5, board = -15 } },
		weight = 0
	},
	{
		id = "quest_hunt_02",
		character = "lead_artem",
		left_choice = { effects = { team = 25, product = 0, money = -30, board = -20 }, next_card_id = "quest_hunt_03" },
		right_choice = { effects = { team = -15, product = 5, money = 10, board = 15 }, next_card_id = "quest_hunt_03" },
		weight = 0
	},
	{
		id = "quest_hunt_03",
		character = "investor_mark",
		left_choice = { effects = { team = -15, product = 15, money = 20, board = 15 }, next_card_id = "quest_hunt_04" },
		right_choice = { effects = { team = 20, product = 5, money = -20, board = -15 }, next_card_id = "quest_hunt_04" },
		weight = 0
	},
	{
		id = "quest_hunt_04",
		character = "hr_kristina",
		left_choice = { effects = { team = 15, product = 10, money = -10, board = 10 } },
		right_choice = { effects = { team = -10, product = 5, money = 5, board = -10 } },
		weight = 0
	},

	-- Story Arc: Peak Traffic & Server Outage
	{
		id = "quest_bf_01",
		character = "lead_artem",
		left_choice = { effects = { team = 10, product = 20, money = -25, board = -10 }, next_card_id = "quest_bf_02_stable" },
		right_choice = { effects = { team = -20, product = 10, money = 15, board = 10 }, next_card_id = "quest_bf_02_crash" },
		weight = 20
	},
	{
		id = "quest_bf_02_crash",
		character = "sales_igor",
		left_choice = { effects = { team = -15, product = 15, money = -20, board = -20 }, next_card_id = "quest_bf_03" },
		right_choice = { effects = { team = -5, product = -25, money = -30, board = -25 }, next_card_id = "quest_bf_03" },
		weight = 0
	},
	{
		id = "quest_bf_02_stable",
		character = "sales_igor",
		left_choice = { effects = { team = 15, product = 20, money = 10, board = -10 }, next_card_id = "quest_bf_03" },
		right_choice = { effects = { team = -10, product = -5, money = 25, board = 25 }, next_card_id = "quest_bf_03" },
		weight = 0
	},
	{
		id = "quest_bf_03",
		character = "zavhoz_mikhalych",
		left_choice = { effects = { team = 5, product = 15, money = -20, board = 5 }, next_card_id = "quest_bf_04" },
		right_choice = { effects = { team = -10, product = -10, money = 5, board = -5 }, next_card_id = "quest_bf_04" },
		weight = 0
	},
	{
		id = "quest_bf_04",
		character = "investor_mark",
		left_choice = { effects = { team = 10, product = 15, money = -15, board = 10 } },
		right_choice = { effects = { team = -10, product = 10, money = 15, board = -5 } },
		weight = 0
	},

	-- Story Arc: Series A Investment & Board
	{
		id = "quest_vc_01",
		character = "investor_mark",
		left_choice = { effects = { team = 10, product = 5, money = -15, board = -20 }, next_card_id = "quest_vc_boot" },
		right_choice = { effects = { team = -5, product = 10, money = 35, board = 25 }, next_card_id = "quest_vc_02" },
		weight = 20
	},
	{
		id = "quest_vc_boot",
		character = "sales_igor",
		left_choice = { effects = { team = 5, product = -10, money = 25, board = 5 } },
		right_choice = { effects = { team = -15, product = -15, money = 20, board = -10 } },
		weight = 0
	},
	{
		id = "quest_vc_02",
		character = "investor_mark",
		left_choice = { effects = { team = 0, product = -10, money = -30, board = 25 }, next_card_id = "quest_vc_03" },
		right_choice = { effects = { team = 10, product = 15, money = 10, board = -20 }, next_card_id = "quest_vc_03" },
		weight = 0
	},
	{
		id = "quest_vc_03",
		character = "hr_kristina",
		left_choice = { effects = { team = 15, product = 10, money = -15, board = -15 }, next_card_id = "quest_vc_04" },
		right_choice = { effects = { team = -20, product = -5, money = 10, board = 20 }, next_card_id = "quest_vc_04" },
		weight = 0
	},
	{
		id = "quest_vc_04",
		character = "lead_artem",
		left_choice = { effects = { team = 15, product = 20, money = -10, board = 5 } },
		right_choice = { effects = { team = -15, product = 5, money = 5, board = 10 } },
		weight = 0
	},

	-- Story Arc: Support Automation vs Human Care
	{
		id = "quest_auto_01",
		character = "lead_artem",
		left_choice = { effects = { team = 20, product = 5, money = -15, board = -15 }, next_card_id = "quest_auto_human" },
		right_choice = { effects = { team = -15, product = 10, money = 25, board = 15 }, next_card_id = "quest_auto_02" },
		weight = 20
	},
	{
		id = "quest_auto_human",
		character = "sales_igor",
		left_choice = { effects = { team = 10, product = 5, money = 20, board = 10 } },
		right_choice = { effects = { team = -10, product = 15, money = -10, board = 5 } },
		weight = 0
	},
	{
		id = "quest_auto_02",
		character = "sales_igor",
		left_choice = { effects = { team = 10, product = 15, money = -15, board = 10 }, next_card_id = "quest_auto_03" },
		right_choice = { effects = { team = 5, product = 5, money = -5, board = -10 }, next_card_id = "quest_auto_03" },
		weight = 0
	},
	{
		id = "quest_auto_03",
		character = "hr_kristina",
		left_choice = { effects = { team = 25, product = 15, money = -20, board = -10 }, next_card_id = "quest_auto_04" },
		right_choice = { effects = { team = -30, product = -5, money = 30, board = 20 }, next_card_id = "quest_auto_04" },
		weight = 0
	},
	{
		id = "quest_auto_04",
		character = "investor_mark",
		left_choice = { effects = { team = 15, product = 20, money = -10, board = 5 } },
		right_choice = { effects = { team = -5, product = 0, money = 25, board = 20 } },
		weight = 0
	},

	-- Story Arc: Intellectual Property & Lawsuit
	{
		id = "quest_ip_01",
		character = "sales_igor",
		left_choice = { effects = { team = 10, product = 5, money = -30, board = -15 }, next_card_id = "quest_ip_fight" },
		right_choice = { effects = { team = -10, product = -5, money = -15, board = 10 }, next_card_id = "quest_ip_settle" },
		weight = 20
	},
	{
		id = "quest_ip_fight",
		character = "lead_artem",
		left_choice = { effects = { team = -15, product = -20, money = -10, board = 15 }, next_card_id = "quest_ip_03" },
		right_choice = { effects = { team = 10, product = 5, money = -30, board = -5 }, next_card_id = "quest_ip_03" },
		weight = 0
	},
	{
		id = "quest_ip_settle",
		character = "investor_mark",
		left_choice = { effects = { team = 10, product = 5, money = -5, board = 15 }, next_card_id = "quest_ip_03" },
		right_choice = { effects = { team = -5, product = 0, money = 10, board = -10 }, next_card_id = "quest_ip_03" },
		weight = 0
	},
	{
		id = "quest_ip_03",
		character = "lead_artem",
		left_choice = { effects = { team = -5, product = 20, money = -20, board = 20 } },
		right_choice = { effects = { team = 20, product = 15, money = 5, board = -20 } },
		weight = 0
	},

	-- Story Arc: Technical Debt & Refactoring
	{
		id = "quest_ref_01",
		character = "lead_artem",
		left_choice = { effects = { team = 20, product = 25, money = -20, board = -20 }, next_card_id = "quest_ref_02" },
		right_choice = { effects = { team = -20, product = -20, money = 20, board = 15 }, next_card_id = "quest_ref_debt" },
		weight = 20
	},
	{
		id = "quest_ref_debt",
		character = "sales_igor",
		left_choice = { effects = { team = -15, product = 20, money = -10, board = 5 } },
		right_choice = { effects = { team = -5, product = -15, money = -20, board = 10 } },
		weight = 0
	},
	{
		id = "quest_ref_02",
		character = "sales_igor",
		left_choice = { effects = { team = 5, product = 15, money = -10, board = 10 }, next_card_id = "quest_ref_03" },
		right_choice = { effects = { team = 15, product = 20, money = -15, board = -15 }, next_card_id = "quest_ref_03" },
		weight = 0
	},
	{
		id = "quest_ref_03",
		character = "lead_artem",
		left_choice = { effects = { team = 15, product = 20, money = -10, board = 10 }, next_card_id = "quest_ref_04" },
		right_choice = { effects = { team = -5, product = 10, money = 10, board = 5 }, next_card_id = "quest_ref_04" },
		weight = 0
	},
	{
		id = "quest_ref_04",
		character = "investor_mark",
		left_choice = { effects = { team = -10, product = 15, money = 20, board = 20 } },
		right_choice = { effects = { team = 15, product = 10, money = 10, board = 5 } },
		weight = 0
	},

	-- Story Arc: Office Space vs Remote Transition
	{
		id = "quest_off_01",
		character = "hr_kristina",
		left_choice = { effects = { team = 20, product = -10, money = 20, board = -15 }, next_card_id = "quest_off_remote" },
		right_choice = { effects = { team = -10, product = 15, money = -25, board = 15 }, next_card_id = "quest_off_hub" },
		weight = 20
	},
	{
		id = "quest_off_remote",
		character = "lead_artem",
		left_choice = { effects = { team = -10, product = 15, money = 0, board = 10 }, next_card_id = "quest_off_03" },
		right_choice = { effects = { team = 15, product = 10, money = -5, board = -5 }, next_card_id = "quest_off_03" },
		weight = 0
	},
	{
		id = "quest_off_hub",
		character = "zavhoz_mikhalych",
		left_choice = { effects = { team = -5, product = 0, money = 15, board = 10 }, next_card_id = "quest_off_03" },
		right_choice = { effects = { team = 10, product = 5, money = -15, board = -10 }, next_card_id = "quest_off_03" },
		weight = 0
	},
	{
		id = "quest_off_03",
		character = "investor_mark",
		left_choice = { effects = { team = 15, product = 10, money = 5, board = 10 } },
		right_choice = { effects = { team = -20, product = 15, money = -10, board = 20 } },
		weight = 0
	},

	-- Standalone Authentic Dilemmas (Fillers)
	{
		id = "filler_01",
		character = "zavhoz_mikhalych",
		left_choice = { effects = { team = 15, product = -10, money = 5, board = -5 } },
		right_choice = { effects = { team = -5, product = 5, money = -15, board = 5 } },
		weight = 10
	},
	{
		id = "filler_02",
		character = "zavhoz_mikhalych",
		left_choice = { effects = { team = -15, product = -5, money = 5, board = 5 } },
		right_choice = { effects = { team = 20, product = 5, money = -20, board = -5 } },
		weight = 10
	},
	{
		id = "filler_03",
		character = "zavhoz_mikhalych",
		left_choice = { effects = { team = -15, product = 0, money = 10, board = 5 } },
		right_choice = { effects = { team = 10, product = 0, money = -15, board = -5 } },
		weight = 10
	},
	{
		id = "filler_04",
		character = "zavhoz_mikhalych",
		left_choice = { effects = { team = 5, product = 0, money = -10, board = -10 } },
		right_choice = { effects = { team = -5, product = 0, money = 20, board = 15 } },
		weight = 10
	},
	{
		id = "filler_05",
		character = "zavhoz_mikhalych",
		left_choice = { effects = { team = -20, product = -15, money = 10, board = 5 } },
		right_choice = { effects = { team = 20, product = 20, money = -25, board = -10 } },
		weight = 10
	},
	{
		id = "filler_06",
		character = "lead_artem",
		left_choice = { effects = { team = -15, product = -15, money = 20, board = -10 } },
		right_choice = { effects = { team = 5, product = 15, money = -20, board = 10 } },
		weight = 10
	},
	{
		id = "filler_07",
		character = "lead_artem",
		left_choice = { effects = { team = -15, product = 20, money = -15, board = 5 } },
		right_choice = { effects = { team = 5, product = -15, money = 5, board = -10 } },
		weight = 10
	},
	{
		id = "filler_08",
		character = "lead_artem",
		left_choice = { effects = { team = -10, product = 15, money = 0, board = 10 } },
		right_choice = { effects = { team = 15, product = -5, money = -5, board = -5 } },
		weight = 10
	},
	{
		id = "filler_09",
		character = "lead_artem",
		left_choice = { effects = { team = 20, product = 10, money = -15, board = -10 } },
		right_choice = { effects = { team = -20, product = -10, money = 10, board = 10 } },
		weight = 10
	},
	{
		id = "filler_10",
		character = "lead_artem",
		left_choice = { effects = { team = -10, product = 20, money = -10, board = 10 } },
		right_choice = { effects = { team = 15, product = -15, money = 5, board = -5 } },
		weight = 10
	},
	{
		id = "filler_11",
		character = "lead_artem",
		left_choice = { effects = { team = -10, product = 20, money = -15, board = 10 } },
		right_choice = { effects = { team = 10, product = -20, money = 5, board = -15 } },
		weight = 10
	},
	{
		id = "filler_12",
		character = "lead_artem",
		left_choice = { effects = { team = -10, product = 25, money = -15, board = 10 } },
		right_choice = { effects = { team = 10, product = -15, money = 5, board = -5 } },
		weight = 10
	},
	{
		id = "filler_13",
		character = "hr_kristina",
		left_choice = { effects = { team = 25, product = 5, money = -25, board = -20 } },
		right_choice = { effects = { team = -20, product = -5, money = 15, board = 15 } },
		weight = 10
	},
	{
		id = "filler_14",
		character = "hr_kristina",
		left_choice = { effects = { team = 20, product = 5, money = 5, board = -10 } },
		right_choice = { effects = { team = -25, product = 10, money = -5, board = 15 } },
		weight = 10
	},
	{
		id = "filler_15",
		character = "hr_kristina",
		left_choice = { effects = { team = 20, product = 5, money = -15, board = -10 } },
		right_choice = { effects = { team = -10, product = 0, money = 10, board = 5 } },
		weight = 10
	},
	{
		id = "filler_16",
		character = "hr_kristina",
		left_choice = { effects = { team = -10, product = 5, money = 5, board = 5 } },
		right_choice = { effects = { team = 20, product = -5, money = -20, board = -10 } },
		weight = 10
	},
	{
		id = "filler_17",
		character = "hr_kristina",
		left_choice = { effects = { team = 15, product = 15, money = -10, board = -15 } },
		right_choice = { effects = { team = -15, product = -10, money = 20, board = 15 } },
		weight = 10
	},
	{
		id = "filler_18",
		character = "hr_kristina",
		left_choice = { effects = { team = 10, product = -10, money = -10, board = 10 } },
		right_choice = { effects = { team = -10, product = 15, money = -15, board = 5 } },
		weight = 10
	},
	{
		id = "filler_19",
		character = "hr_kristina",
		left_choice = { effects = { team = 15, product = 10, money = -15, board = 5 } },
		right_choice = { effects = { team = -15, product = 0, money = 5, board = -5 } },
		weight = 10
	},
	{
		id = "filler_20",
		character = "sales_igor",
		left_choice = { effects = { team = 5, product = 5, money = -15, board = -15 } },
		right_choice = { effects = { team = -15, product = -10, money = 25, board = 15 } },
		weight = 10
	},
	{
		id = "filler_21",
		character = "sales_igor",
		left_choice = { effects = { team = 0, product = 0, money = 10, board = -10 } },
		right_choice = { effects = { team = 10, product = -5, money = -25, board = 20 } },
		weight = 10
	},
	{
		id = "filler_22",
		character = "sales_igor",
		left_choice = { effects = { team = 5, product = 10, money = -15, board = -10 } },
		right_choice = { effects = { team = -10, product = -10, money = 15, board = 10 } },
		weight = 10
	},
	{
		id = "filler_23",
		character = "sales_igor",
		left_choice = { effects = { team = 0, product = 0, money = 10, board = -10 } },
		right_choice = { effects = { team = -5, product = 5, money = -15, board = 15 } },
		weight = 10
	},
	{
		id = "filler_24",
		character = "sales_igor",
		left_choice = { effects = { team = 5, product = 5, money = -20, board = 15 } },
		right_choice = { effects = { team = -5, product = -5, money = 10, board = -15 } },
		weight = 10
	},
	{
		id = "filler_25",
		character = "sales_igor",
		left_choice = { effects = { team = -10, product = 15, money = -20, board = 20 } },
		right_choice = { effects = { team = 10, product = 5, money = 10, board = -15 } },
		weight = 10
	},
	{
		id = "filler_26",
		character = "sales_igor",
		left_choice = { effects = { team = 15, product = 10, money = -15, board = -15 } },
		right_choice = { effects = { team = -15, product = -10, money = 25, board = 15 } },
		weight = 10
	},
	{
		id = "filler_27",
		character = "investor_mark",
		left_choice = { effects = { team = 15, product = 20, money = -20, board = -20 } },
		right_choice = { effects = { team = -10, product = -15, money = 25, board = 25 } },
		weight = 10
	},
	{
		id = "filler_28",
		character = "investor_mark",
		left_choice = { effects = { team = -15, product = -10, money = 20, board = 20 } },
		right_choice = { effects = { team = 15, product = 10, money = -10, board = -15 } },
		weight = 10
	},
	{
		id = "filler_29",
		character = "investor_mark",
		left_choice = { effects = { team = -5, product = 5, money = -10, board = 20 } },
		right_choice = { effects = { team = 5, product = 0, money = 5, board = -15 } },
		weight = 10
	},
	{
		id = "filler_30",
		character = "investor_mark",
		left_choice = { effects = { team = 15, product = 0, money = 20, board = -20 } },
		right_choice = { effects = { team = -15, product = 0, money = -25, board = 20 } },
		weight = 10
	},
	{
		id = "filler_31",
		character = "investor_mark",
		left_choice = { effects = { team = 5, product = 0, money = 5, board = -10 } },
		right_choice = { effects = { team = -10, product = 5, money = -20, board = 20 } },
		weight = 10
	},
	{
		id = "filler_32",
		character = "investor_mark",
		left_choice = { effects = { team = 25, product = 0, money = -10, board = -15 } },
		right_choice = { effects = { team = -20, product = 0, money = 10, board = 15 } },
		weight = 10
	},
	{
		id = "filler_33",
		character = "investor_mark",
		left_choice = { effects = { team = 5, product = 5, money = -10, board = 15 } },
		right_choice = { effects = { team = -5, product = 0, money = 5, board = -15 } },
		weight = 10
	},
	{
		id = "filler_34",
		character = "zavhoz_mikhalych",
		left_choice = { effects = { team = -10, product = 15, money = -10, board = 10 } },
		right_choice = { effects = { team = 10, product = -10, money = 0, board = -10 } },
		weight = 10
	},
	{
		id = "filler_35",
		character = "zavhoz_mikhalych",
		left_choice = { effects = { team = 5, product = 15, money = -15, board = 5 } },
		right_choice = { effects = { team = -10, product = -15, money = 5, board = -10 } },
		weight = 10
	},
	{
		id = "filler_36",
		character = "lead_artem",
		left_choice = { effects = { team = 15, product = 20, money = -15, board = 10 } },
		right_choice = { effects = { team = -5, product = -10, money = 5, board = -5 } },
		weight = 10
	},
	{
		id = "filler_37",
		character = "hr_kristina",
		left_choice = { effects = { team = 20, product = 10, money = -20, board = 5 } },
		right_choice = { effects = { team = -15, product = -5, money = 10, board = -5 } },
		weight = 10
	}
}

return M
