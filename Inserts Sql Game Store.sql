#______________________________________INSERTS____________________________________________________

#Insert GENEROs
insert into tbGenero (nome) values ("Ação"), ("Ação-Aventura"), ("RPG"), ("Esportes"), ("Puzzle e Party"), ("Estratégia"), ("FPS"), ("MOBA"), ("Simulação");

#Insert DESENVOLVEDORES
insert into tbDeveloper (cnpj, nome) values 
('17.097.386/0001-02', "Rockstar"), ('66.681.974/0001-9', "Nintendo"), 
('23.345.873/0001-86', "Psyonix"), ('25.096.573/0001-77', "Playground Games"),
('15.409.786/0001', "Riot Games"), ('11.824.486/0001-07', "Blizzard"), 
('03.001.068/0001', "Ubisoft"), ('15.98.235/0001-20', "Santa Monica Studio"), 
('02.184.024/0001', "Eletronic Arts"), ('11.824.486/0001-07', "Activision");

#Insert JOGOS
insert into tbJogo (nome, preço, data_lançamento, codDeveloper, codGenero) values
('God of War Ragnarok', '199.90', '2022-11-09', '8', '2'), ('GTA 5', '90.00', '2013-10-01', '1', '2'),
('Super Mario Party', '99.00', '2018-10-05', '2', '5'), ('FIFA 2023', '299.99', '2022-09-27', '9', '4'),
('Rocket League', '20.00', '2015-07-07', '3', '4'),('Red Dead Redemption', '199.99', '2010-05-18', '1', '2'),
('Red Dead Redemption 2', '300.00', '2018-10-26', '1', '2'),('Diablo IV', '399.99', '2023-06-05', '6', '2'), 
('Forza Horizon 5', '250.00', '2021-11-01', '4', '4'),('Forza Horizon 4', '199.99', '2018-09-28', '4', '4'), 
('Forza Horizon 3', '149.99', '2016-09-27', '4', '4'),('Forza Horizon 2', '100.00', '2014-09-30', '4', '4'), 
('Forza Horizon', '50.00', '2012-10-23', '4', '4'), ('Valorant', '0', '2020-06-02', '5', '7'),
('League Of Legends', '0', '2009-10-27', '5', '8'), ('Assassins Creed IV: Black Flag', '70.00', '2013-10-29', '7', '2'),
('Tom Clancys Rainbow Six Siege', '59.99', '2015-12-01', '6', '4'),('The Sims 3', '99.99', '2009-06-02', '9', '9'),
('Need for Speed Heat', '250', '2019-10-16', '9', '2'), ('Far Cry', '120.00', '2021-10-07', '7', '2'),
('Call of Duty Modern Warfare', '82', '2019-10-25', '8', '7'),('Call of Duty Modern Warfare 2', '299.99', '2022-10-28', '8', '7')
;

#Insert PLATAFORMAS
insert into tbPlataforma (nome) values ("Playstation 5"), ("Xbox One S"), ("PC"), ("Nintendo Switch");

#Insert JOGOS EM PLATAFORMAS
insert into tbJogoPlataforma (codJogo, codPlataforma) values
(1, 1),
(2, 1), (2, 2), (2, 3),
(3, 4),
(4, 1), (4, 2), (4, 3),
(5, 1), (5, 2), (5, 3),
(6, 1), (6, 2), (6, 3),
(7, 1), (7, 2), (7, 3),
(8, 1), (8, 2), (8, 3),
(9, 1), (9, 2), (9, 3),
(10, 1), (10, 2), (10, 3),
(11, 1), (11, 2), (11, 3),
(12, 1), (12, 2), (12, 3),
(13, 1), (13, 2), (13, 3),
(14, 1), (14, 2), (14, 3),
(15, 3),
(16, 1), (16, 2), (16, 3),
(17, 1), (17, 2), (17, 3),
(18, 1), (18, 2), (18, 3),
(19, 1), (19, 2), (19, 3),
(20, 1), (20, 2), (20, 3);


#Insert CLIENTES
insert into tbCliente (cpf, nome, telefone, cidade, UF, data_nascimento, codAssinatura) values
('12345678911', 'Antonio', '88954343758', 'Cedro', 'CE', '2003-04-25', '1'), ('12342348524', 'Felipe', '88918490384', 'Iguatu', 'CE', '2000-09-01', '2'),
('36485968274', 'João', '88936498603', 'Lavras da Mangabeira', 'CE', '2003-10-10', '3'), ('15435678911', 'Rafael', '88948395039', 'Crato', 'CE', '2002-06-15', '1'),
('32098465783', 'Pedro', '88937495743', 'Rio de Janeiro', 'RJ', '2003-08-15', '3'), ('09812376544', 'Maria', '88912548709', 'São Paulo', 'SP', '2000-01-03', '3'),
('75440912657', 'Geovanna', '88909823212', 'Cedro', 'CE', '2003-02-28', '3'), ('00239485761', 'Jade', '88909129384', 'Fortaleza', 'CE', '2003-11-30', '3');

#Insert VENDAS
insert into tbVenda(data_venda, codCliente, codJogo, codPlataforma, valor_venda) values 

('2022-01-12', 1, 2, 1, 90.00), ('2022-01-12', 1, 3, 4, 99.00),
('2022-05-19', 2, 14, 3, 0), ('2023-02-15', 2, 22, 3, 299.99),
('2022-01-12', 3, 4, 3, 299.99), ('2022-01-12', 3, 6, 3, 199.99),
('2022-01-12', 4, 7, 3, 300.00), ('2022-01-12', 4, 9, 3, 250.00),
('2022-01-12', 5, 10, 2, 199.99), ('2022-01-12', 5, 12, 2, 100.00),
('2022-01-12', 6, 8, 3, 299.99), ('2022-01-12', 6, 14, 3, 59.99),
('2022-01-12', 7, 15, 3, 0.00), ('2022-01-12', 7, 19, 3, 120.00),
('2022-01-12', 8, 11, 2, 0.00), ('2022-01-12', 8, 17, 2, 250.00);

insert into tbVenda (data_venda, codCliente, codJogo, codPlataforma, valor_venda) values ('2023-02-15', 2, 22, 3, 299.99);
#Insert AVALIAÇÔES
insert into tbAvaliação(pontuação, comentario, codCliente, codJogo) values 
('8', 'Muito bom', 1, 2), ('7', 'Ótima jogabilidade', 1, 3),
('9', 'Incrível história', 2, 22), ('8', 'Valeu a pena', 2, 14),
('10', 'Melhor jogo que já joguei', 3, 4), ('6', 'Poderia ser melhor', 3, 6),
('8', 'Gráficos impressionantes', 4, 7), ('9', 'Me diverti muito', 4, 9),
('7', 'Esperava mais', 5, 10), ('8', 'Surpreendeu', 5, 12),
('9', 'Não conseguia parar de jogar', 6, 8), ('9', 'Recomendo a todos', 6, 14),
('7', 'Não era o que eu esperava', 7, 15), ('10', 'Viciante!', 7, 19),
('8', 'Jogabilidade única', 8, 11), ('6', 'Decepcionante', 8, 17);


#Insert ASSINATURAS
insert into tbAssinatura (data_assinatura, codCliente) values
('2018-10-28', 1), ('2019-06-10', 2),
('2020-03-15', 3),('2021-02-20', 4),
('2022-01-05', 5),('2022-07-15', 6),
('2023-04-22', 7),('2023-08-20', 8);

