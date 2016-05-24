
Station.destroy_all
Report.destroy_all
Station.create!(name:'Аделя Кутуя номер 31', master:'Мифтахов')
Station.create!(name:'Родиина номер 15', master:'Мифтахов')
Station.create!(name:'Проспект победы номер 9', master:'Мифтахов')
Station.create!(name:'Амирхана номер 13', master:'Мифтахов')
Station.create!(name:'Воровского 38', master:'Мифтахов')
Station.create!(name:'Клары Цеткин 39', master:'Мифтахов')
Report.create!( station:2,       f95:222,                
  f92: 2323,                
  f80: 321,                
  fdt: 323,                
  fgaz: 23,               
  magazine:  140000,           
  vipcardonstock:  3,     
  vipcardtreid: 343,       
  discountonstock: 31,    
  discounttreid: 123,      
  carwasher:  2321,          
  allinstation: 40000,       
  changetime: 2016-05-23)         
