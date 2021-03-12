

final createTable = '''
CREATE TABLE produto(
  id INT PRIMARY KEY,
  nome VARCHAR(200) NOT NULL,
  quantidade INT NOT NULL,
  preco DOUBLE NOT NULL,
  url_avatar VARCHAR(255) NOT NULL
)
''';

final insert ='''
INSERT INTO produto(nome, quantidade, preco, url_avatar)
VALUES('Brahma','15','9','https://cdn.pixabay.com/photo/2016/11/29/12/32/beach-1869523_960_720.jpg')
''';

final insert2 ='''
INSERT INTO produto(nome, quantidade, preco, url_avatar)
VALUES('Original','48','15','https://cdn.pixabay.com/photo/2018/05/31/16/51/glass-of-beer-3444480_960_720.jpg')
''';

final insert3 ='''
INSERT INTO produto(nome, quantidade, preco, url_avatar)
VALUES('SubZero','24','7','https://cdn.pixabay.com/photo/2012/04/13/11/53/glass-32068_960_720.png')
''';