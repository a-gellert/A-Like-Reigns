local M = {}

M.code = "tr"
M.name = "Türkçe"
M.short_name = "TR"

M.ui = {
	quarter = "Çeyrek %d",
	game_over_header = "KOVULDUNUZ!",
	game_over_default_title = "Kariyer Sonu",
	game_over_default_desc = "Yönetim kurulu CEO'luk görevinize son verdi.",
	game_over_score = "Dayandığınız süre: %d Çeyrek",
	btn_revive = "Koltukta Kal (+35%)\n(Reklam İzle)",
	btn_restart = "Yeni Girişim (Yeniden)",
	footer_hint = "Sola/sağa kaydırın veya A / D tuşlarına basın",
	choice_left_default = "HAYIR",
	choice_right_default = "EVET"
}

M.characters = {
	hr_kristina = { name = "Ceren", sprite = "hr_kristina" },
	lead_artem = { name = "Arda", sprite = "lead_artem" },
	sales_igor = { name = "İlker", sprite = "sales_igor" },
	investor_mark = { name = "Mert", sprite = "investor_mark" },
	zavhoz_mikhalych = { name = "Kemal Usta", sprite = "zavhoz_mikhalych" }
}

M.deaths = {
	team = {
		min = {
			title = "Toplu İstifa",
			desc = "Kilit yazılımcılar aynı gün istifa etti. Sistemi sürdürecek kimse kalmadı."
		},
		max = {
			title = "Tam Anarşi",
			desc = "Sonsuz izinler ve sıfır teslim tarihi. Şirket ürün geliştirmeyi tamamen durdurdu."
		}
	},
	product = {
		min = {
			title = "Sistem Çöküşü",
			desc = "Veritabanı çöktü ve yedekler kurtarılamadı. Müşteriler sistemi terk etti."
		},
		max = {
			title = "Kusursuzluk Tuzağı",
			desc = "Yıllar kusursuz mimari arayışıyla harcandı. Çevik rakipler tüm pazarı ele geçirdi."
		}
	},
	money = {
		min = {
			title = "İflas",
			desc = "Kasa boşaldı. Sunucu faturaları ve maaşlar ödenemeyince faaliyetler durduruldu."
		},
		max = {
			title = "Mali Denetim",
			desc = "Şüpheli aşırı kârlılık vergi müfettişlerini çekti. Tüm şirket hesapları donduruldu."
		}
	},
	board = {
		min = {
			title = "Güvensizlik Oyu",
			desc = "Yönetim kurulu oybirliğiyle CEO görevine son verdi ve binaya girişinizi yasakladı."
		},
		max = {
			title = "Şirket Satışı",
			desc = "Büyük bir holding şirketi tamamen satın aldı. Yönetim kurulu kendi yöneticisini atadı."
		}
	}
}

M.cards = {
	tut_01 = {
		text = "CEO koltuğuna hoş geldiniz! Zor kararlar almaya ve kaynakları yönetmeye hazır mısınız?",
		left = "Yumuşak bir lider olacağım",
		right = "Önce iş gelir"
	},
	tut_02 = {
		text = "Yukarıda 4 kaynak var: Ekip, Ürün, Kasa ve Yönetim. Herhangi biri 0 veya 100 olursa kovulursunuz!",
		left = "Anlaşıldı, dengeyi koru",
		right = "Hızlı büyüme için risk al"
	},
	tut_03 = {
		text = "Simgelerin üzerindeki noktalar kararlarınızın etkisini gösterir. İlk çeyreğe başlayalım mı?",
		left = "Temkinli ilerleme",
		right = "Agresif büyüme"
	},

	quest_sec_01 = {
		text = "Ödeme altyapımızda kritik bir açık bulundu. Korsanlar bilgileri sızdırmamak için fidye istiyor.",
		left = "Gizlice fidyeyi öde",
		right = "Reddet ve açığı kapat"
	},
	quest_sec_02_paid = {
		text = "Korsanlar yine de verileri sızdırdı ve daha fazla para istedi. Yönetim gizli ödemeye çok öfkeli.",
		left = "Üst düzey güvenlik denetçisi tut",
		right = "İddiaları kamuoyunda reddet"
	},
	quest_sec_02_disclose = {
		text = "Kamuoyu açıklaması kullanıcılarda panik yarattı. Büyük kurumsal müşteriler sözleşme revizyonu istiyor.",
		left = "3 ay ücretsiz hizmet ver",
		right = "Sözleşme şartlarında ısrar et"
	},
	quest_sec_03 = {
		text = "Güvenlik birimi zorunlu iki aşamalı doğrulama ve haftalık sızma testleri uygulanmasını istiyor.",
		left = "Katı güvenlik uygula",
		right = "Esnek kuralları koru"
	},
	quest_sec_04 = {
		text = "Saldırı sonrası kriz sürecinde mühendisler tükendi. Ekibin toparlanmaya ihtiyacı var.",
		left = "Ücretli dinlenme izni ver",
		right = "Mesai primleri dağıt"
	},

	quest_ent_01 = {
		text = "Büyük bir banka milyonluk sözleşme imzalamak istiyor ancak kendi kapalı sunucularında kurulum şartı koşuyor.",
		left = "Reddet: sadece SaaS kalalım",
		right = "Sözleşmeyi imzala"
	},
	quest_ent_reject = {
		text = "Yönetim kurulu kaçırılan gelirden rahatsız ve alternatif bir büyüme planı talep ediyor.",
		left = "KOBİ satışlarına odaklan",
		right = "Operasyonel giderleri kıs"
	},
	quest_ent_02 = {
		text = "Banka yüzlerce özel geliştirme talebinde bulundu. Ana ürün geliştirmemiz tamamen durdu.",
		left = "Özel ekip oluştur",
		right = "Müşteri taleplerini sınırla"
	},
	quest_ent_03 = {
		text = "Banka denetimi küçük uyumluluk eksikleri buldu ve bir sonraki ödemeyi dondurmakla tehdit ediyor.",
		left = "Eksikleri hemen tamamla",
		right = "Erteleme talep et"
	},
	quest_ent_04 = {
		text = "Başarılı kurulum diğer büyük holdinglerin de kapısını açtı.",
		left = "Tamamen Kurumsal B2B'ye geç",
		right = "Dengeli SaaS odağını koru"
	},

	quest_hunt_01 = {
		text = "Yatırım almış bir rakip yakınımıza ofis açtı ve kıdemli yazılımcılarımıza 2 kat maaş teklif ediyor.",
		left = "Hisse opsiyonuyla maaşı dengele",
		right = "Kültür ve vizyona güven"
	},
	quest_hunt_loss = {
		text = "İki kilit mimar ayrıldı. Genç yazılımcılar belgelenmemiş eski kodları anlamakta zorlanıyor.",
		left = "Pahalı danışmanlar tut",
		right = "Belgelendirme için sürümleri durdur"
	},
	quest_hunt_02 = {
		text = "Yazılımcılar kaldı ancak diğer departmanlar da benzer oranda maaş artışı talep ediyor.",
		left = "Tüm çalışanlara zam yap",
		right = "Piyasa gerçeklerini açıkla"
	},
	quest_hunt_03 = {
		text = "Maaş yükümüz arttı. Yönetim, maliyetlerin daha düşük olduğu bir şehirde geliştirme merkezi açmayı öneriyor.",
		left = "Taşrada geliştirme merkezi aç",
		right = "Tek merkezde toplan"
	},
	quest_hunt_04 = {
		text = "Yeni transfer dalgalarını önlemek için İK net kariyer basamakları ve kademe sistemi öneriyor.",
		left = "Kademe sistemini başlat",
		right = "Yatay yapıyı koru"
	},

	quest_bf_01 = {
		text = "Yaklaşan büyük indirim sezonu trafiği 10 kat artıracak. Sunucularımız bu yükü kaldıramayabilir.",
		left = "Önceden yedek kapasite kirala",
		right = "Masrafsız kod optimizasyonu yap"
	},
	quest_bf_02_crash = {
		text = "Gece yarısı sipariş veritabanı kilitlendi! Müşteriler ödeme yapamıyor ve sosyal medya çalkalanıyor.",
		left = "Kısıtlı modda yeniden başlat",
		right = "Tam veritabanı onarımını bekle"
	},
	quest_bf_02_stable = {
		text = "Yoğun trafik sıfır kesintiyle atlatıldı. Gelir hedefi %40 oranında aşıldı.",
		left = "Kârı Ar-Ge'ye yatır",
		right = "Yatırımcılara kâr payı dağıt"
	},
	quest_bf_03 = {
		text = "Yoğunluk sırasında sunucu odasındaki soğutma ve güç üniteleri aşırı ısınarak hasar gördü.",
		left = "Endüstriyel iklimlendirme kur",
		right = "Geçici fanlar yerleştir"
	},
	quest_bf_04 = {
		text = "Başarılı sezonun ardından yönetim kurulu uzun vadeli altyapı stratejisini değerlendiriyor.",
		left = "Sunucusuz (serverless) modele geç",
		right = "Fiziksel sunucu kabinleri kirala"
	},

	quest_vc_01 = {
		text = "Büyük bir girişim sermayesi fonu %35 hisse ve 2 yönetim koltuğu karşılığında $5M yatırım teklif ediyor.",
		left = "Reddet: kontrolü elde tut",
		right = "Yatırım turunu kabul et"
	},
	quest_vc_boot = {
		text = "Dış yatırım olmadan acilen şirket faaliyetlerinin kâra geçmesi gerekiyor.",
		left = "Abonelik ücretlerini artır",
		right = "Ücretli danışmanlık başlat"
	},
	quest_vc_02 = {
		text = "Yeni yönetim kurulu üyeleri önümüzdeki çeyrekte aktif kullanıcı sayısında katlanarak büyüme istiyor.",
		left = "Pazarlama bütçesini üçe katla",
		right = "Organik viral büyümeye odaklan"
	},
	quest_vc_03 = {
		text = "Hızlı büyüme için bu ay 20 uzman işe alınmalı. Şirket kültürünün zedelenme riski var.",
		left = "Sıkı işe alım çıtasını koru",
		right = "İşe alım sürecini hızlandır"
	},
	quest_vc_04 = {
		text = "Hızlı büyüme ekipler arası koordinasyonsuzluğa ve kod çakışmalarına yol açtı.",
		left = "Özerk alt ekiplere ayrıl",
		right = "Mimari kontrolü merkezileştir"
	},

	quest_auto_01 = {
		text = "Müşteri destek taleplerinin ilk aşamasını yapay zeka tabanlı otomatik yanıtlayıcıya devretme teklifi geldi.",
		left = "İnsan uzmanları koru",
		right = "Otomatik sistemi devreye al"
	},
	quest_auto_human = {
		text = "Birebir insan desteği şirketimize yüksek müşteri memnuniyeti ödülü kazandırdı.",
		left = "7/24 VIP destek paketi yap",
		right = "Standart hizmeti sürdür"
	},
	quest_auto_02 = {
		text = "Otomatik sistem standart taleplerin %80'ini çözüyor ancak karmaşık kurumsal sorularda hata yapıyor.",
		left = "İnsan onay aşaması ekle",
		right = "Bilgi tabanını sınırla"
	},
	quest_auto_03 = {
		text = "Müşteri hizmetleri ekibi olası işten çıkarmalardan endişe duyuyor.",
		left = "Ekibi test/ürün rollerine eğit",
		right = "Kadro optimizasyonu yap"
	},
	quest_auto_04 = {
		text = "Yönetim kurulu otomasyon sonrası düşen operasyonel maliyetlerden oldukça memnun.",
		left = "Tasarrufu ürüne yatır",
		right = "Net kâr olarak kasada tut"
	},

	quest_ip_01 = {
		text = "Eski bir rakip, senkronizasyon algoritmamızın patentlerini ihlal ettiği iddiasıyla dava açtı.",
		left = "Mahkemede patentini iptal ettir",
		right = "Uzlaşma ve lisans anlaşması yap"
	},
	quest_ip_fight = {
		text = "Dava için baş mühendislerin haftalarca teknik delil ve geçmiş teknoloji raporu hazırlaması gerekiyor.",
		left = "Mühendisleri davaya odakla",
		right = "Dışarıdan uzman bilirkişi tut"
	},
	quest_ip_settle = {
		text = "Uzlaşma yasal riskleri kaldırdı ancak düzenli telif ödemesi yapılmasını gerektiriyor.",
		left = "Müşterilere durumu açıkla",
		right = "Şartları gizli tut"
	},
	quest_ip_03 = {
		text = "Sorunlu modülü sıfırdan yeniden yazdık — artık 3 kat daha hızlı ve tamamen özgün.",
		left = "Savunma amaçlı patent başvurusu yap",
		right = "Açık kaynak olarak yayımla"
	},

	quest_ref_01 = {
		text = "Biriken teknik borç yeni özellik hızımızı yarıya düşürdü. Yazılımcılar bir aylık refactoring istiyor.",
		left = "Refactoring süresi ver",
		right = "Ticari özellikleri çıkarmaya devam et"
	},
	quest_ref_debt = {
		text = "Üründeki hatalar müşteri şikayetlerini artırdı. Satış ekibi yeni müşteri yerine sorun çözmekle uğraşıyor.",
		left = "Acil hata düzeltme sprinti yap",
		right = "Müşterilere indirim teklif et"
	},
	quest_ref_02 = {
		text = "Arka plan yenilenirken müşteriler arayüzde görünür iyileştirmeler bekliyor.",
		left = "Geliştirmeyi böl: Altyapı ve Arayüz",
		right = "Önce çekirdeği tamamla"
	},
	quest_ref_03 = {
		text = "Modüler mimariye geçiş tamamlandı. Derleme ve test süreleri önemli ölçüde kısaldı.",
		left = "Sürekli dağıtım (CI/CD) başlat",
		right = "Haftalık sürümlerde kal"
	},
	quest_ref_04 = {
		text = "Sistem kararlılığı rekor seviyede. Yatırımcılar ürün olgunluğunu takdir ediyor.",
		left = "Yurt dışı açılımını hazırla",
		right = "İç pazardaki gücü pekiştir"
	},

	quest_off_01 = {
		text = "Ofis kira sözleşmemiz bitiyor. Ekibin yarısı modern bir ofis, yarısı ise tam uzaktan çalışma istiyor.",
		left = "Tamamen uzaktan çalışmaya geç",
		right = "Yeni ortak çalışma ofisi kirala"
	},
	quest_off_remote = {
		text = "Tam uzaktan çalışma kira masrafını sıfırladı ancak ekipler arası iletişimi zorlaştırdı.",
		left = "Düzenli toplantılar planla",
		right = "Asenkron takip sistemine geç"
	},
	quest_off_hub = {
		text = "Yeni ofis ekibin uyumunu artırdı ancak aylık bina ve tesis giderleri yükseldi.",
		left = "Boş masaları alt kiraya ver",
		right = "Büyüme için alanı koru"
	},
	quest_off_03 = {
		text = "Yönetim kurulu çalışma alanı düzenlemesinin sonuçlarını değerlendiriyor.",
		left = "Kalıcı hibrit modeli onayla",
		right = "Katı ofis kurallarına geri dön"
	},

	filler_01 = {
		text = "Ofis binasında kaloriferler arızalandı. Odaların sıcaklığı hızla düşüyor.",
		left = "Herkesi eve gönder",
		right = "Güçlü elektrikli ısıtıcılar al"
	},
	filler_02 = {
		text = "Çalışanlar sırt sağlığı ve verimlilik için ergonomik ayakta çalışma masaları istiyor.",
		left = "Reddet: bütçe kısıtlı",
		right = "Ergonomik masalar al"
	},
	filler_03 = {
		text = "Ofis mutfağına kahve ve atıştırmalık sağlayan tedarikçi fiyatlarına %30 zam yaptı.",
		left = "Ekonomik tedarikçiye geç",
		right = "Mevcut kaliteyi koru"
	},
	filler_04 = {
		text = "Mülk sahibi 3 yıllık kira uzatması karşılığında %15 indirim teklif ediyor.",
		left = "Aylık esnekliği koru",
		right = "3 yıllık sözleşmeyi imzala"
	},
	filler_05 = {
		text = "Yazılımcıların bilgisayarları eskidi: projeleri derlemek aşırı zaman alıyor.",
		left = "Gelecek yıla ertele",
		right = "Yeni bilgisayarlar al"
	},
	filler_06 = {
		text = "Bulut sağlayıcımız veritabanı depolama ücretlerine zam yapacağını bildirdi.",
		left = "Başka sağlayıcıya taşın",
		right = "Kal ve verileri optimize et"
	},
	filler_07 = {
		text = "Kullandığımız popüler bir açık kaynak kütüphanesinde kritik güvenlik açığı tespit edildi.",
		left = "Kendi modülümüzü yazalım",
		right = "Resmi güvenlik yamasını bekle"
	},
	filler_08 = {
		text = "Stajyer test ortamında yanlış betik çalıştırarak test verilerini sildi.",
		left = "Erişim yetkilerini kısıtla",
		right = "Eğitici değerlendirme yap"
	},
	filler_09 = {
		text = "Mühendisler hafta sonu acil nöbetler için ek nöbet ücreti talep ediyor.",
		left = "Nöbet primi tanımla",
		right = "Mevcut maaş kapsamında tut"
	},
	filler_10 = {
		text = "Kod kalitesini artıracak ancak teslimatları yavaşlatacak sıkı kod inceleme kuralları öneriliyor.",
		left = "Katı inceleme kuralı koy",
		right = "Esnek incelemeyi sürdür"
	},
	filler_11 = {
		text = "Kullandığımız veritabanı sürümünün resmi desteği bitti. Yeni sürüme geçiş gerekiyor.",
		left = "Kademeli yükseltme planla",
		right = "Gelecek çeyreğe ertele"
	},
	filler_12 = {
		text = "Yazılım ekibi otomatik test kapsamının en az %85 olmasını zorunlu kılmayı öneriyor.",
		left = "%85 sınırını zorunlu yap",
		right = "Mevcut testlerle devam et"
	},
	filler_13 = {
		text = "Enflasyon maaşların alım gücünü düşürdü. Ekip yıllık maaş güncellemesi bekliyor.",
		left = "Tam enflasyon zammı yap",
		right = "Sadece performans primi ver"
	},
	filler_14 = {
		text = "Ankete göre çalışanların %70'i haftada 2 gün ofisli hibrit çalışma modelini tercih ediyor.",
		left = "Hibrit modeli onayla",
		right = "Haftada 5 gün ofis şartı koy"
	},
	filler_15 = {
		text = "İK, çalışan sağlığı için spor ve psikolojik destek bütçesi ayrılmasını öneriyor.",
		left = "Sağlık paketini başlat",
		right = "Doğrudan primlere odaklan"
	},
	filler_16 = {
		text = "Pazarlama ekibi şirket içi bağları güçlendirmek için şehir dışı strateji kampı öneriyor.",
		left = "Toplantıyı ofiste yap",
		right = "Dış kampı onayla"
	},
	filler_17 = {
		text = "Ürün ve Satış ekipleri gelecek çeyreğin öncelikleri konusunda anlaşmazlığa düştü.",
		left = "Yazılım ekibini dinle",
		right = "Satış ekibini dinle"
	},
	filler_18 = {
		text = "Mühendislik fakülteleri yaz dönemi için stajyer programı başlatmayı öneriyor.",
		left = "Staj programı aç",
		right = "Sadece kıdemlilere odaklan"
	},
	filler_19 = {
		text = "Yazılımcılar uluslararası bir teknoloji konferansına konuşmacı olarak katılmak için bütçe istiyor.",
		left = "Konferans masraflarını karşıla",
		right = "Talebi reddet"
	},
	filler_20 = {
		text = "Büyük bir müşteri sistemin kapalı kaldığı her saat için $100,000 ceza maddesi ekletmek istiyor.",
		left = "Ağır ceza maddesini reddet",
		right = "Sözleşme için kabul et"
	},
	filler_21 = {
		text = "Sektör fuarı organizatörleri yüksek bir ücret karşılığında ana sponsorluk teklif ediyor.",
		left = "Standart stantla yetin",
		right = "Ana sponsorluğu al"
	},
	filler_22 = {
		text = "Ana rakibimiz müşteri çekmek için yıllık üyeliklerde %50 indirim kampanyası başlattı.",
		left = "Fiyatları koru",
		right = "İndirimle karşılık ver"
	},
	filler_23 = {
		text = "Entegratör iş ortakları komisyon oranlarının %10'dan %20'ye çıkarılmasını istiyor.",
		left = "%10 komisyonda kal",
		right = "Komisyon oranını artır"
	},
	filler_24 = {
		text = "Büyük bir kurumsal müşteri hizmeti kullanmaya devam etmesine rağmen faturasını 2 aydır ödemiyor.",
		left = "Erişimi askıya al",
		right = "Ek süre ver ve görüş"
	},
	filler_25 = {
		text = "Satış ekibi ürünümüze yurt dışı pazarlarda yoğun talep olduğunu tespit etti.",
		left = "Yerelleştir ve açıl",
		right = "İç pazara odaklan"
	},
	filler_26 = {
		text = "Ürün ekibi kullanıcıları ücretli pakete yönlendirmek için ücretsiz sürüm sınırlarını kısmayı öneriyor.",
		left = "Cömert ücretsiz paketi koru",
		right = "Ücretsiz limitleri kıs"
	},
	filler_27 = {
		text = "Yönetim kurulu dönem kârının Ar-Ge yerine temettü olarak dağıtılmasını istiyor.",
		left = "Yatırıma ikna et",
		right = "Kâr payını dağıt"
	},
	filler_28 = {
		text = "Büyük bir teknoloji şirketi şirketimizi satın alma konusunu gayriresmi olarak sordu.",
		left = "Ön görüşme yap",
		right = "Teklifi reddet"
	},
	filler_29 = {
		text = "Deneyimli bir sektör lideri sembolik bir hisse karşılığı danışma kuruluna katılmayı teklif ediyor.",
		left = "Danışman olarak al",
		right = "Teklifi reddet"
	},
	filler_30 = {
		text = "Şirket üst yönetiminin yıllık prim havuzunu onaylama zamanı geldi.",
		left = "Yönetici primlerini kıs",
		right = "Tam prim havuzunu onayla"
	},
	filler_31 = {
		text = "Yatırımcı fonlar resmi çevresel ve kurumsal sürdürülebilirlik denetim raporu talep ediyor.",
		left = "Standart rapor hazırla",
		right = "Kapsamlı denetim yap"
	},
	filler_32 = {
		text = "İlk çalışanlar hak kazandıkları hisse opsiyonlarının bir kısmını satmak için izin istiyor.",
		left = "Kısmi satışa izin ver",
		right = "İkincil satışı yasakla"
	},
	filler_33 = {
		text = "Ekonomi dergisi şirketimizin mali yapısı hakkında röportaj talep ediyor.",
		left = "Röportajı kabul et",
		right = "Yorum yapmaktan kaçın"
	},
	filler_34 = {
		text = "Güvenlik birimi ofis giriş kayıtlarında personele atanmamış kartlar tespit etti.",
		left = "Tam erişim denetimi yap",
		right = "Sözlü uyarı ver"
	},
	filler_35 = {
		text = "Sunucu odasındaki Kesintisiz Güç Kaynağı (UPS) akülerinin kullanım ömrü doldu.",
		left = "Yeni akülerle değiştir",
		right = "Değişimi ertele"
	},
	filler_36 = {
		text = "Yazılım ekibi açık ödül avcılığı (Bug Bounty) programı başlatmayı öneriyor.",
		left = "Bug Bounty başlat",
		right = "İç denetime güven"
	},
	filler_37 = {
		text = "Çalışan tavsiye programı ile yetenekli adaylar işe alındı. Tavsiye primlerinin ödenme vakti geldi.",
		left = "Primleri eksiksiz öde",
		right = "Ödemeyi gelecek aya aktar"
	}
}

return M
