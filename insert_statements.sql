USE tstdatabasefinal;

DELIMITER //
CREATE TRIGGER UpdateContainsLineItem
AFTER INSERT ON LINE_ITEM
FOR EACH ROW
BEGIN
	INSERT INTO CONTAINS (Cart_ID, ISBN)
    VALUES (NEW.Cart_ID, NEW.ISBN);
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER UpdatePaysForOrders
AFTER INSERT ON ORDERS
FOR EACH ROW
BEGIN
	INSERT INTO PAYS_FOR (Card_Number, Order_ID)
    VALUES (NEW.Card_Number, NEW.Order_ID);
END //
DELIMITER ;

-- Insert statements for BOOK table
INSERT INTO BOOK VALUES ('9780008172128', 'Origin', 'Dan Brown', 'Thriller', 25.99, '2017-10-03');
INSERT INTO BOOK VALUES ('9780525555373', 'The Nightingale', 'Kristin Hannah', 'Historical Fiction', 27.99, '2015-02-03');
INSERT INTO BOOK VALUES ('9781501160780', 'The Great Alone', 'Kristin Hannah', 'Historical Fiction', 28.99, '2018-02-06');
INSERT INTO BOOK VALUES ('9780062315007', 'The Alchemist', 'Paulo Coelho', 'Fiction', 16.99, '1988-05-01');
INSERT INTO BOOK VALUES ('9781735219090', 'The Woman in the Window', 'A.J. Finn', 'Thriller', 26.99, '2018-01-02');
INSERT INTO BOOK VALUES ('9781501171345', 'Then She Was Gone', 'Lisa Jewell', 'Thriller', 16.00, '2018-04-17');
INSERT INTO BOOK VALUES ('9781501128035', 'The Light We Lost', 'Jill Santopolo', 'Romance', 16.00, '2017-05-09');
INSERT INTO BOOK VALUES ('9780385544238', 'The Outsider', 'Stephen King', 'Horror', 30.00, '2018-05-22');
INSERT INTO BOOK VALUES ('9781501197679', 'The Silent Patient', 'Alex Michaelides', 'Thriller', 26.99, '2019-02-05');
INSERT INTO BOOK VALUES ('9780062498533', 'Little Fires Everywhere', 'Celeste Ng', 'Fiction', 17.00, '2017-09-12');
INSERT INTO BOOK VALUES ('9780735219090', 'Where the Crawdads Sing', 'Delia Owens', 'Fiction', 26.00, '2018-08-14');
INSERT INTO BOOK VALUES ('9781501137563', 'Before We Were Yours', 'Lisa Wingate', 'Historical Fiction', 26.00, '2017-06-06');
INSERT INTO BOOK VALUES ('9780062820150', 'Educated', 'Tara Westover', 'Memoir', 28.00, '2018-02-20');
INSERT INTO BOOK VALUES ('9781501175566', 'An American Marriage', 'Tayari Jones', 'Fiction', 26.95, '2018-02-06');
INSERT INTO BOOK VALUES ('9780525536291', 'The Tattooist of Auschwitz', 'Heather Morris', 'Historical Fiction', 16.99, '2018-09-04');
INSERT INTO BOOK VALUES ('9780062358202', 'The Seven Husbands of Evelyn Hugo', 'Taylor Jenkins Reid', 'Historical Fiction', 17.00, '2017-06-13');
INSERT INTO BOOK VALUES ('9781984818485', 'Circe', 'Madeline Miller', 'Fantasy', 27.00, '2018-04-10');
INSERT INTO BOOK VALUES ('9781501175466', 'The Dutch House', 'Ann Patchett', 'Fiction', 27.00, '2019-09-24');
INSERT INTO BOOK VALUES ('9780062941506', 'The Giver of Stars', 'Jojo Moyes', 'Historical Fiction', 28.00, '2019-10-08');
INSERT INTO BOOK VALUES ('9781250314208', 'Ninth House', 'Leigh Bardugo', 'Fantasy', 27.99, '2019-10-08');
INSERT INTO BOOK VALUES ('9781501161930', 'The Institute', 'Stephen King', 'Horror', 30.00, '2019-09-10');
INSERT INTO BOOK VALUES ('9781250209764', 'American Dirt', 'Jeanine Cummins', 'Fiction', 27.99, '2020-01-21');
INSERT INTO BOOK VALUES ('9780385692443', 'The Testaments', 'Margaret Atwood', 'Fiction', 28.95, '2019-09-10');
INSERT INTO BOOK VALUES ('9780525559474', 'The Nickel Boys', 'Colson Whitehead', 'Historical Fiction', 24.95, '2019-07-16');
INSERT INTO BOOK VALUES ('9780735211292', 'Normal People', 'Sally Rooney', 'Fiction', 17.00, '2018-08-28');
INSERT INTO BOOK VALUES ('9780735224292', 'The Silent Patient', 'Alex Michaelides', 'Thriller', 26.99, '2019-02-05');
INSERT INTO BOOK VALUES ('9780735224308', 'City of Girls', 'Elizabeth Gilbert', 'Historical Fiction', 28.00, '2019-06-04');
INSERT INTO BOOK VALUES ('9780735224315', 'The Water Dancer', 'Ta-Nehisi Coates', 'Fiction', 28.00, '2019-09-24');
INSERT INTO BOOK VALUES ('9780735224322', 'The Starless Sea', 'Erin Morgenstern', 'Fantasy', 28.95, '2019-11-05');
INSERT INTO BOOK VALUES ('9780735224339', 'The Institute', 'Stephen King', 'Horror', 30.00, '2019-09-10');
INSERT INTO BOOK VALUES ('9780735224346', 'The Guardians', 'John Grisham', 'Thriller', 29.95, '2019-10-15');
INSERT INTO BOOK VALUES ('9780735224353', 'The Testaments', 'Margaret Atwood', 'Fiction', 28.95, '2019-09-10');
INSERT INTO BOOK VALUES ('9780735224360', 'The Dutch House', 'Ann Patchett', 'Fiction', 27.00, '2019-09-24');
INSERT INTO BOOK VALUES ('9780735224377', 'The Giver of Stars', 'Jojo Moyes', 'Historical Fiction', 28.00, '2019-10-08');
INSERT INTO BOOK VALUES ('9780735224384', 'The Water Dancer', 'Ta-Nehisi Coates', 'Fiction', 28.00, '2019-09-24');
INSERT INTO BOOK VALUES ('9780735224391', 'The Starless Sea', 'Erin Morgenstern', 'Fantasy', 28.95, '2019-11-05');
INSERT INTO BOOK VALUES ('9780735224407', 'The Nickel Boys', 'Colson Whitehead', 'Historical Fiction', 24.95, '2019-07-16');
INSERT INTO BOOK VALUES ('9780735224414', 'The Guardians', 'John Grisham', 'Thriller', 29.95, '2019-10-15');
INSERT INTO BOOK VALUES ('9780735224421', 'The Testaments', 'Margaret Atwood', 'Fiction', 28.95, '2019-09-10');
INSERT INTO BOOK VALUES ('9780735224438', 'The Dutch House', 'Ann Patchett', 'Fiction', 27.00, '2019-09-24');
INSERT INTO BOOK VALUES ('9780735224445', 'The Giver of Stars', 'Jojo Moyes', 'Historical Fiction', 28.00, '2019-10-08');
INSERT INTO BOOK VALUES ('9780735224452', 'The Water Dancer', 'Ta-Nehisi Coates', 'Fiction', 28.00, '2019-09-24');
INSERT INTO BOOK VALUES ('9780735224469', 'The Starless Sea', 'Erin Morgenstern', 'Fantasy', 28.95, '2019-11-05');
INSERT INTO BOOK VALUES ('9780735224476', 'The Nickel Boys', 'Colson Whitehead', 'Historical Fiction', 24.95, '2019-07-16');
INSERT INTO BOOK VALUES ('9780735224483', 'The Guardians', 'John Grisham', 'Thriller', 29.95, '2019-10-15');
INSERT INTO BOOK VALUES ('9780735224490', 'The Testaments', 'Margaret Atwood', 'Fiction', 28.95, '2019-09-10');
INSERT INTO BOOK VALUES ('9780735224506', 'The Dutch House', 'Ann Patchett', 'Fiction', 27.00, '2019-09-24');
INSERT INTO BOOK VALUES ('9780735224513', 'The Giver of Stars', 'Jojo Moyes', 'Historical Fiction', 28.00, '2019-10-08');
INSERT INTO BOOK VALUES ('9780735224520', 'The Water Dancer', 'Ta-Nehisi Coates', 'Fiction', 28.00, '2019-09-24');
INSERT INTO BOOK VALUES ('9780735224537', 'The Starless Sea', 'Erin Morgenstern', 'Fantasy', 28.95, '2019-11-05');
INSERT INTO BOOK VALUES ('9780735224544', 'The Nickel Boys', 'Colson Whitehead', 'Historical Fiction', 24.95, '2019-07-16');
INSERT INTO BOOK VALUES ('9780316055437', 'Little Bee', 'Chris Cleave', 'Fiction', 14.99, '2008-08-07');
INSERT INTO BOOK VALUES ('9780385618670', 'Cloud Atlas', 'David Mitchell', 'Science Fiction', 18.00, '2004-03-05');
INSERT INTO BOOK VALUES ('9780375831003', 'The Book Thief', 'Markus Zusak', 'Historical Fiction', 12.99, '2005-03-14');
INSERT INTO BOOK VALUES ('9781400032716', 'The Kite Runner', 'Khaled Hosseini', 'Fiction', 15.95, '2003-05-29');
INSERT INTO BOOK VALUES ('9781501173219', 'All the Light We Cannot See', 'Anthony Doerr', 'Historical Fiction', 17.00, '2014-05-06');
INSERT INTO BOOK VALUES ('9780316769488', 'Catcher in the Rye', 'J.D. Salinger', 'Classic', 8.99, '1951-07-16');
INSERT INTO BOOK VALUES ('9780345803481', 'Fifty Shades of Grey', 'E.L. James', 'Romance', 15.95, '2011-05-25');
INSERT INTO BOOK VALUES ('9781400078776', 'Life of Pi', 'Yann Martel', 'Fiction', 15.95, '2001-09-11');
INSERT INTO BOOK VALUES ('9780061120084', 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 14.99, '1960-07-11');
INSERT INTO BOOK VALUES ('9780307588371', 'Gone Girl', 'Gillian Flynn', 'Thriller', 15.00, '2012-06-05');
INSERT INTO BOOK VALUES ('9781439199312', 'Inferno', 'Dan Brown', 'Thriller', 29.99, '2013-05-14');
INSERT INTO BOOK VALUES ('9780312577223', 'The Girl on the Train', 'Paula Hawkins', 'Thriller', 16.00, '2015-01-13');
INSERT INTO BOOK VALUES ('9780552159715', 'The Martian', 'Andy Weir', 'Science Fiction', 15.00, '2014-02-11');
INSERT INTO BOOK VALUES ('9780385737944', 'Divergent', 'Veronica Roth', 'Young Adult', 9.99, '2011-04-25');
INSERT INTO BOOK VALUES ('9780142415436', 'The Fault in Our Stars', 'John Green', 'Young Adult', 12.99, '2012-01-10');
INSERT INTO BOOK VALUES ('9780060531041', 'The Shack', 'William P. Young', 'Fiction', 14.99, '2007-07-01');
INSERT INTO BOOK VALUES ('9780385528856', 'The Help', 'Kathryn Stockett', 'Historical Fiction', 16.95, '2009-02-10');
INSERT INTO BOOK VALUES ('9781451627282', '11/22/63', 'Stephen King', 'Science Fiction', 19.99, '2011-11-08');
INSERT INTO BOOK VALUES ('9780399256752', 'Wonder', 'R.J. Palacio', 'Young Adult', 16.99, '2012-02-14');
INSERT INTO BOOK VALUES ('9781451698855', 'The Goldfinch', 'Donna Tartt', 'Fiction', 20.00, '2013-10-22');
INSERT INTO BOOK VALUES ('9780425274866', 'Big Little Lies', 'Liane Moriarty', 'Fiction', 16.00, '2014-07-29');
INSERT INTO BOOK VALUES ('9780345804044', 'Fifty Shades Darker', 'E.L. James', 'Romance', 15.95, '2012-04-17');
INSERT INTO BOOK VALUES ('9780307474278', 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Thriller', 14.95, '2005-08-21');
INSERT INTO BOOK VALUES ('9780061950728', 'The Immortal Life of Henrietta Lacks', 'Rebecca Skloot', 'Non-Fiction', 16.00, '2010-02-02');
INSERT INTO BOOK VALUES ('9780062316097', 'Whered You Go, Bernadette', 'Maria Semple', 'Fiction', 14.99, '2012-08-14');
INSERT INTO BOOK VALUES ('9780307341570', 'The Road', 'Cormac McCarthy', 'Fiction', 16.00, '2006-09-26');
INSERT INTO BOOK VALUES ('9780062348678', 'Station Eleven', 'Emily St. John Mandel', 'Science Fiction', 16.99, '2014-09-09');
INSERT INTO BOOK VALUES ('9781476754451', 'Leaving Time', 'Jodi Picoult', 'Fiction', 16.00, '2014-10-14');
INSERT INTO BOOK VALUES ('9780143124542', 'The Signature of All Things', 'Elizabeth Gilbert', 'Historical Fiction', 17.00, '2013-10-01');
INSERT INTO BOOK VALUES ('9780735217683', 'The Underground Railroad', 'Colson Whitehead', 'Historical Fiction', 16.95, '2016-08-02');
INSERT INTO BOOK VALUES ('9781408701648', 'The Casual Vacancy', 'J.K. Rowling', 'Fiction', 35.00, '2012-09-27');
INSERT INTO BOOK VALUES ('9781476746586', 'The Light Between Oceans', 'M.L. Stedman', 'Historical Fiction', 16.00, '2012-07-31');
INSERT INTO BOOK VALUES ('9780062356345', 'Me Before You', 'Jojo Moyes', 'Romance', 16.00, '2012-01-05');
INSERT INTO BOOK VALUES ('9781442451279', 'The Fault in Our Stars', 'John Green', 'Young Adult', 12.99, '2012-01-10');
INSERT INTO BOOK VALUES ('9780374533571', 'Thinking, Fast and Slow', 'Daniel Kahneman', 'Non-Fiction', 16.00, '2011-10-25');
INSERT INTO BOOK VALUES ('9780393356182', 'Sapiens', 'Yuval Noah Harari', 'Non-Fiction', 22.99, '2011-09-04');
INSERT INTO BOOK VALUES ('9780143126638', 'Eleanor & Park', 'Rainbow Rowell', 'Young Adult', 18.99, '2013-02-26');
INSERT INTO BOOK VALUES ('9780143126478', 'The Husbands Secret', 'Liane Moriarty', 'Fiction', 16.00, '2013-07-30');
INSERT INTO BOOK VALUES ('9780316056892', 'The Goldfinch', 'Donna Tartt', 'Fiction', 30.00, '2013-10-22');
INSERT INTO BOOK VALUES ('9780812981605', 'The Art of Racing in the Rain', 'Garth Stein', 'Fiction', 14.99, '2008-05-13');
INSERT INTO BOOK VALUES ('9780062310627', 'Dark Places', 'Gillian Flynn', 'Thriller', 14.99, '2009-05-05');
INSERT INTO BOOK VALUES ('9780525478812', 'Thirteen Reasons Why', 'Jay Asher', 'Young Adult', 10.99, '2007-10-18');
INSERT INTO BOOK VALUES ('9780385738750', 'Insurgent', 'Veronica Roth', 'Young Adult', 17.99, '2012-05-01');
INSERT INTO BOOK VALUES ('9781455520602', 'The Hit', 'David Baldacci', 'Thriller', 28.00, '2013-04-23');
INSERT INTO BOOK VALUES ('9780142424179', 'Paper Towns', 'John Green', 'Young Adult', 9.99, '2008-10-16');
INSERT INTO BOOK VALUES ('9780312427733', 'The Glass Castle', 'Jeannette Walls', 'Memoir', 17.00, '2005-03-01');
INSERT INTO BOOK VALUES ('9780062024039', 'Allegiant', 'Veronica Roth', 'Young Adult', 19.99, '2013-10-22');
INSERT INTO BOOK VALUES ('9780307276681', 'The Brief Wondrous Life of Oscar Wao', 'Junot Díaz', 'Fiction', 16.00, '2007-09-06');
INSERT INTO BOOK VALUES ('9780307455925', 'A Thousand Splendid Suns', 'Khaled Hosseini', 'Fiction', 16.00, '2007-05-22');

-- Insert statements for CUSTOMER table
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('LRaU78675', 'Barbara', 'Gutierrez', 'boyderica@hotmail.com', '965-055-6228');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('ruPo11997', 'Jacqueline', 'May', 'claudiamccarthy@mcguire.info', '776-841-4402');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('ukwO36229', 'Mary', 'Cannon', 'lorilopez@anthony.com', '497-716-4523');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('nzfm46385', 'Jessica', 'Hill', 'christinetate@weiss-perkins.info', '735-779-3599');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('yIPi53136', 'Mark', 'Robbins', 'angelacruz@hotmail.com', '839-146-6771');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('VIsR63999', 'Gary', 'Nguyen', 'egriffin@johnson.com', '287-134-3478');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('QHTa58079', 'Samuel', 'Mckenzie', 'erichernandez@gmail.com', '326-457-3679');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('rjUg53911', 'Aaron', 'Jackson', 'maykevin@gmail.com', '995-850-7005');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('xeRv53912', 'Daniel', 'Baker', 'michelleramirez@yahoo.com', '976-501-7449');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('ibFD76524', 'Jennifer', 'Miller', 'david08@watson.com', '630-933-5863');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('ZsJc44645', 'Crystal', 'Ferguson', 'vmartinez@clark-walls.biz', '900-807-1409');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('gwMU45936', 'Deborah', 'Moore', 'aruiz@jackson.com', '721-239-8594');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('ewSl50612', 'Brooke', 'Knapp', 'joshua35@hotmail.com', '269-090-9624');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('xvSn08178', 'Cheryl', 'Schwartz', 'mitchellaudrey@gmail.com', '862-682-3441');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('kJaJ17144', 'Tracy', 'Hill', 'jasonblack@clark.com', '011-497-2341');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('Hiev42044', 'Leah', 'Moore', 'cassidy68@bryant.com', '142-234-5746');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('yBNM71521', 'Alyssa', 'Anderson', 'christopher59@hotmail.com', '492-339-0853');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('Ydgm27798', 'Nicole', 'Smith', 'xchristian@payne.com', '834-506-4935');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('JnNO16029', 'Patricia', 'Stone', 'williamsbrian@yahoo.com', '888-603-7590');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('oteG68509', 'Troy', 'Bryan', 'ernest29@harris-lyons.com', '657-301-3964');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('QaDS02684', 'Ashley', 'Soto', 'wilkinscharles@kelly-ortiz.org', '961-355-0522');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('osUU25231', 'Laura', 'White', 'lozanoevan@young.info', '323-320-8520');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('slnu20273', 'Anna', 'Benitez', 'alison19@carrillo-pearson.net', '563-966-3196');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('xUjv31871', 'Derrick', 'Rodriguez', 'schroederashley@williams.com', '082-347-5791');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('EZtu20696', 'Mario', 'Garcia', 'mckenziewright@gmail.com', '301-196-6630');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('natT44200', 'Derek', 'Cox', 'gary33@watkins.com', '612-059-8381');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('siwr09486', 'Jessica', 'Harris', 'kristenbanks@nguyen-young.org', '159-323-8647');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('RZpp18073', 'Sarah', 'Bennett', 'cclark@lee-blackburn.com', '260-495-3830');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('liHy28697', 'Frank', 'Torres', 'amiller@hotmail.com', '434-113-9467');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('tVJL24995', 'Holly', 'Miller', 'wadethomas@hotmail.com', '514-083-3454');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('OVrE84147', 'Tyler', 'Molina', 'johnsonjohn@saunders.com', '152-366-5750
');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('fSfo73137', 'Linda', 'Diaz', 'sharonbush@gmail.com', '858-769-8566');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('BdXJ65894', 'Timothy', 'Cain', 'gina73@mcdonald.net', '893-532-2847');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('FTGs40273', 'Gregory', 'Haley', 'jason97@vega-rivas.org', '177-395-2621');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('TkyO10885', 'Kenneth', 'Avila', 'donaldmitchell@cook-alexander.com', '860-329-0008');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('gkFm65884', 'Rebecca', 'Patel', 'timothy55@gmail.com', '442-557-6288');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('LhDN35748', 'Jacob', 'Little', 'connorchristian@gmail.com', '071-136-6189');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('PNIn87671', 'Brett', 'Mcknight', 'nguyenmelissa@gmail.com', '556-555-5801');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('SONj20943', 'Jillian', 'Alexander', 'ashley56@gmail.com', '930-980-6823');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('FWZo59646', 'Denise', 'Taylor', 'brandi03@gmail.com', '098-082-6185');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('rnLj87540', 'Stacy', 'Snow', 'beckerpamela@yahoo.com', '212-442-2793');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('POWZ63762', 'James', 'Brown', 'ngill@swanson.com', '077-857-0741');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('XhQI33315', 'Julie', 'Brown', 'tracyhampton@hotmail.com', '268-505-0372');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('JQJw19500', 'Patricia', 'Baker', 'williamsandrea@cooper.info', '362-679-8860');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('LMqv65308', 'Michael', 'Barrett', 'norrisjennifer@hotmail.com', '030-197-9701');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('PXKV07742', 'Jane', 'Davis', 'benjaminlowery@yahoo.com', '115-419-5652');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('KXIz08608', 'Alice', 'Molina', 'johnsonkathryn@hotmail.com', '097-753-0582');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('dvkh96992', 'Michelle', 'Blankenship', 'melissa12@reilly.com', '728-096-0587');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('VYrW66696', 'Amanda', 'Brooks', 'michael81@hotmail.com', '481-847-9111');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('mGIZ83431', 'Jenny', 'Vaughan', 'nguyenjose@perez.com', '359-986-6012');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('ENRS11535', 'Matthew', 'Rivera', 'kwoods@maldonado.org', '964-778-7951');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('snQJ29877', 'Patricia', 'Hudson', 'jonesjason@hotmail.com', '080-322-4765');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('PsTW88633', 'Carl', 'Jones', 'privera@chung.com', '362-752-9139');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('rcrs77770', 'Jessica', 'Bell', 'brianclay@mcguire.com', '469-574-3239');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('VHev14691', 'Ralph', 'Parker', 'thomas39@cole.net', '127-889-5222');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('MXpF33098', 'Margaret', 'Brown', 'zhines@gmail.com', '212-137-9004');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('JCjm37912', 'Victor', 'Odonnell', 'xramsey@davis.net', '965-732-2461');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('Ktky14363', 'Dana', 'Ramirez', 'diane86@parker-clark.com', '581-523-6038');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('SLXT22610', 'Kelli', 'Townsend', 'kristy64@gmail.com', '869-347-5946');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('TGCb88070', 'Julia', 'Gibson', 'lowerychristina@yahoo.com', '243-690-0148');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('MBhd90904', 'Jennifer', 'Reyes', 'ryanpatel@yahoo.com', '200-808-9752');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('pmWo13996', 'Michele', 'Hamilton', 'nward@edwards.info', '206-235-3746');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('vdJq49834', 'Christine', 'Hendricks', 'lyonsmark@hotmail.com', '010-674-2451');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('eLwU64740', 'Courtney', 'Lee', 'aaron88@gmail.com', '036-665-8286');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('wmYx85684', 'Amanda', 'Dunn', 'josephnichols@yahoo.com', '793-731-4319');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('NAgE40286', 'Christina', 'White', 'phudson@yahoo.com', '107-406-2313');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('gcYd75177', 'Edgar', 'Ferguson', 'chamberslisa@sparks.net', '010-575-8420');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('UweQ93679', 'Joshua', 'Zamora', 'vdillon@robertson.info', '910-823-9006');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('ZaFF24045', 'Jennifer', 'Mills', 'delgadodenise@keller-warren.net', '795-467-9716');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('aGlc46636', 'Steven', 'Wolf', 'stevengoodman@yahoo.com', '405-523-6108');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('KXZF57560', 'Kathryn', 'Curry', 'johnsonrichard@yahoo.com', '546-059-5846');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('thYQ33921', 'Margaret', 'Rose', 'kevinaustin@yahoo.com', '682-652-9577');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('PaIW55609', 'Sara', 'Ferguson', 'robertparsons@gmail.com', '483-503-8528');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('VIlD25559', 'Kent', 'Robinson', 'mollyrivera@taylor-gould.com', '672-413-5143');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('kyNY18534', 'Anthony', 'Baker', 'warrenjesse@hotmail.com', '061-622-7261');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('ZEQk81161', 'Jessica', 'Ortiz', 'carolinebrown@hotmail.com', '579-799-3210');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('PqYg22715', 'Traci', 'Ryan', 'zwilliams@gmail.com', '048-004-7086');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('SlWY40971', 'Michael', 'Hernandez', 'gloria82@salinas.net', '483-364-7306');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('rCyl77089', 'Heather', 'Carter', 'robert15@gmail.com', '923-028-7209');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('ALTe97909', 'Cindy', 'Johnson', 'kimberlywilson@soto.com', '176-904-1054');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('MdIV56389', 'David', 'Payne', 'aross@nichols-scott.org', '439-504-7824');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('EAOZ17095', 'Diane', 'Decker', 'iramsey@romero.net', '841-380-3832');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('DLXw13438', 'Stephen', 'Smith', 'usmith@hotmail.com', '802-101-8225');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('GssL92738', 'Matthew', 'Martinez', 'harrisonchristine@brown.biz', '716-710-6046');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('wtDF05490', 'Courtney', 'Thomas', 'qrogers@gmail.com', '002-062-7336');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('sCfz50536', 'Zachary', 'Bailey', 'bryan28@gmail.com', '385-362-8106');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('Pgxn83689', 'Andrea', 'Morales', 'ghenderson@herring.net', '411-027-6275');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('nKIg32159', 'Samantha', 'Bradley', 'nunezjennifer@gmail.com', '725-964-0749');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('fXpU84286', 'Ashlee', 'Anderson', 'qhill@hotmail.com', '731-883-5978');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('jMTE63281', 'Jesus', 'Smith', 'leahstewart@yahoo.com', '582-037-7263');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('oZKd20725', 'Carmen', 'Thomas', 'xstewart@howell.biz', '676-978-0336');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('gjXW22436', 'Lisa', 'Weeks', 'gsantana@jackson.biz', '480-648-5058');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('iXwp37383', 'Cheryl', 'Olson', 'williammacias@pratt.org', '104-758-8876');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('KCFY08184', 'Nicholas', 'Johnson', 'arthurjones@gmail.com', '678-496-0033');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('xAlv24077', 'Kevin', 'Boyd', 'perezsteven@wolfe-montoya.com', '221-933-4943');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('VPiM58561', 'Gregory', 'Macdonald', 'danielle72@hutchinson.org', '514-653-7868');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('BWoT76295', 'John', 'Stevens', 'tiffany63@gmail.com', '755-549-9003');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('qfkd32307', 'Alicia', 'Evans', 'cynthiarivera@clarke.net', '134-043-9888');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('KZcl13395', 'Daniel', 'Matthews', 'michaeldavis@hotmail.com', '799-537-8770');
INSERT INTO CUSTOMER (Customer_ID, Fname, Lname, Email, Phone_Number) VALUES ('wvtH13398', 'Brandon', 'Smith', 'gregoryvicki@gmail.com', '469-906-2266');


-- Insert statements for SHOPPING_CART table
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('ywQa68251', 130.53, 3);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('VJtg10369', 0.0, 0);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('wEGB28046', 1482.31, 8);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('GwGj39802', 815.26, 8);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('pwXC51589', 1983.09, 10);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('daun48330', 53.75, 6);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('kjwI11853', 337.08, 3);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('rpbV37049', 588.38, 7);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('mydx30815', 1017.38, 7);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('TWTP71718', 447.54, 5);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('bxpm27467', 433.05, 10);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('lqOy32412', 60.95, 2);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('yTBM21573', 518.22, 9);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('koMh49512', 1426.39, 9);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('ObMI77004', 53.2, 10);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('StVK13381', 702.17, 5);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('jgTp27535', 633.08, 8);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('bnQz02428', 331.48, 7);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('jNAR58942', 164.21, 3);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('nVNE12829', 1793.39, 10);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('pSSC07445', 535.55, 7);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('YdgP56774', 706.23, 4);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('qRso33272', 188.74, 9);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('QOKn94841', 110.02, 2);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('XahR04105', 541.82, 7);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('WaiA80072', 625.65, 5);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('TstN96120', 89.02, 1);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('rHTa61529', 106.07, 7);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('qoxT50251', 118.94, 2);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('kCit11005', 598.02, 6);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('gPiz05410', 1343.44, 7);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('wkeM62077', 188.64, 4);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('nZzD34655', 461.72, 7);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('LSaS41900', 992.17, 6);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('zFSy89443', 660.76, 5);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('PYOq65178', 28.13, 2);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('diVI04155', 319.95, 3);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('UnGV81372', 0.0, 0);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('bTnu02545', 531.82, 6);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('LpoO25319', 1765.7, 9);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('UWQU13620', 329.41, 5);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('BhQW98910', 37.02, 3);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('rMrc36496', 20.43, 2);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('sLxe21841', 1518.34, 13);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('BAVg22058', 7.84, 1);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('GDkw21761', 475.08, 3);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('oEJI85437', 100.23, 4);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('gFpW56226', 517.69, 8);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('WKgF99525', 294.64, 4);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('oYeN55649', 813.66, 5);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('xoRW02664', 1913.6, 10);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('GjMH73150', 163.66, 3);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('kGlO81672', 172.29, 15);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('eLsA90030', 1622.57, 9);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('cADX41307', 26.82, 7);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('MYYI61713', 0.6, 1);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('usLh85797', 0.0, 0);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('GLBA19789', 624.51, 4);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('TsBN91958', 937.06, 7);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('iAZB48268', 1048.08, 10);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('rDYw09540', 86.53, 8);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('WtYp79450', 504.21, 5);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('WrdK69495', 206.88, 7);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('tBHV69076', 348.04, 2);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('xnRy95327', 82.61, 12);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('DWLx40589', 1099.87, 10);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('Neaq88968', 264.23, 4);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('RPYv42148', 0.0, 0);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('BZYp93887', 248.57, 8);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('dPME08955', 539.23, 3);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('KogP80704', 175.03, 2);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('yQmr91807', 258.63, 5);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('Vbta06508', 72.28, 5);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('ZTik28418', 74.31, 2);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('rMWr44595', 710.61, 6);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('yzLt13770', 0.0, 0);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('UFuA88885', 937.71, 5);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('LYBh08816', 848.09, 6);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('KoBZ79472', 288.96, 8);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('RcoN61040', 929.77, 10);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('Ngvt34968', 964.47, 5);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('bzcF92890', 0.0, 0);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('qqUn16736', 236.19, 2);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('eAgK63602', 698.06, 10);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('yBPR22494', 997.29, 9);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('rIcq22199', 28.68, 3);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('UeVW56691', 971.24, 5);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('yEcl34372', 0.0, 0);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('CVwj20588', 629.87, 6);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('MPSO54151', 94.97, 6);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('HrZI19196', 143.26, 2);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('DCUR15369', 496.84, 4);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('euuD76634', 43.4, 8);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('uViF09594', 542.95, 4);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('yZnR43043', 713.59, 7);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('yJxe60278', 955.6, 8);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('sHfR21597', 93.33, 4);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('FaLV39049', 68.68, 1);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('fPlL56524', 0.0, 0);
INSERT INTO SHOPPING_CART (Cart_ID, Cart_Total, Total_Products) VALUES ('cbSu74164', 187.29, 5);


--- Insert statements for PAYMENT table
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('630460788429', 949, 'Mastercard', '08/23', 'TGCb88070');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('2251611995155856', 564, 'Visa', '03/30', 'oteG68509');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3587819880515976', 576, 'AmericanExpress', '09/25', 'aGlc46636');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('180023466489121', 442, 'Discover', '12/26', 'BWoT76295');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('349668411025491', 606, 'Visa', '04/27', 'LRaU78675');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('375737033199153', 302, 'Discover', '01/29', 'JnNO16029');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4644171969510599', 338, 'Discover', '06/31', 'SONj20943');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('373998676200730', 181, 'Discover', '08/24', 'ewSl50612');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('180012949446345', 944, 'Mastercard', '02/24', 'rcrs77770');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3527215020308567', 320, 'Mastercard', '12/24', 'MXpF33098');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4264005743914063', 485, 'AmericanExpress', '09/27', 'wvtH13398');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('6512849449512720', 851, 'Discover', '01/29', 'QaDS02684');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4345139007193594', 788, 'AmericanExpress', '03/33', 'ALTe97909');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4853122932728878', 872, 'AmericanExpress', '03/27', 'xeRv53912');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('2288449917417410', 868, 'Visa', '08/29', 'kyNY18534');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4166680816009279', 940, 'AmericanExpress', '10/31', 'gkFm65884');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4609415563621207', 723, 'AmericanExpress', '09/27', 'KCFY08184');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('567136373048', 760, 'AmericanExpress', '08/24', 'JQJw19500');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('630431286842', 461, 'AmericanExpress', '06/24', 'eLwU64740');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3506547422699481', 718, 'AmericanExpress', '09/28', 'GssL92738');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('180040501640906', 363, 'AmericanExpress', '04/26', 'JCjm37912');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('38361047390770', 497, 'Mastercard', '05/29', 'FTGs40273');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('30263289432989', 102, 'Discover', '04/33', 'PXKV07742');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('341313590233511', 385, 'Mastercard', '09/29', 'natT44200');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3590804361844157', 701, 'Visa', '01/30', 'dvkh96992');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('570230660518', 892, 'Visa', '12/27', 'VYrW66696');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('349817027923488', 391, 'Discover', '01/23', 'fXpU84286');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('572299968394', 974, 'AmericanExpress', '10/28', 'OVrE84147');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4764082399426', 785, 'AmericanExpress', '09/29', 'rCyl77089');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('343701115150582', 949, 'Visa', '10/31', 'yIPi53136');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('213128501594586', 323, 'Discover', '04/29', 'ibFD76524');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('30425048728003', 661, 'Discover', '12/32', 'LMqv65308');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('38532708529860', 102, 'Mastercard', '10/27', 'siwr09486');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3599213173475088', 125, 'Discover', '12/26', 'TkyO10885');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3550631701867293', 357, 'Visa', '01/26', 'SLXT22610');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('566981120330', 673, 'Mastercard', '03/28', 'LhDN35748');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4066187743631684', 978, 'AmericanExpress', '08/25', 'POWZ63762');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('676299059623', 380, 'Mastercard', '01/29', 'EZtu20696');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4789698906965157', 700, 'Discover', '10/29', 'Ktky14363');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3548531180336015', 525, 'Visa', '12/25', 'xvSn08178');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('586312089418', 371, 'Visa', '09/24', 'pmWo13996');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('341974702232079', 742, 'Discover', '05/23', 'QHTa58079');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('676252495673', 998, 'Discover', '06/28', 'FWZo59646');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('376087883888466', 122, 'Discover', '10/33', 'Pgxn83689');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4867342680933944', 912, 'Mastercard', '08/26', 'sCfz50536');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('376085419258485', 102, 'AmericanExpress', '11/32', 'EAOZ17095');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('2292557135936971', 312, 'Visa', '05/23', 'gwMU45936');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4981766731191', 953, 'Mastercard', '07/25', 'rnLj87540');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4159111017927', 645, 'Discover', '10/33', 'PqYg22715');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4354554664125', 975, 'Discover', '03/27', 'yBNM71521');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('30587653437137', 815, 'Discover', '10/31', 'osUU25231');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('2720277345451925', 830, 'Discover', '05/24', 'xAlv24077');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('344743874582281', 706, 'AmericanExpress', '02/26', 'gjXW22436');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4837907310229604', 696, 'Mastercard', '10/24', 'liHy28697');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3513088506615581', 792, 'Visa', '10/24', 'thYQ33921');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3527733198389706', 294, 'Visa', '08/30', 'UweQ93679');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('2252064917455997', 784, 'Visa', '09/26', 'VHev14691');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('180056367674672', 752, 'Discover', '06/28', 'mGIZ83431');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('38043736738903', 627, 'Mastercard', '07/28', 'RZpp18073');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4916665947702192', 197, 'AmericanExpress', '04/26', 'fSfo73137');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3534138795819728', 572, 'AmericanExpress', '03/26', 'PsTW88633');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('38398152002543', 608, 'Discover', '09/31', 'KXZF57560');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('213186710278904', 170, 'Mastercard', '08/29', 'slnu20273');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('2468172526248164', 808, 'Mastercard', '10/29', 'iXwp37383');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('6510657502746420', 623, 'Mastercard', '09/30', 'jMTE63281');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('5240881280175193', 423, 'Mastercard', '07/24', 'vdJq49834');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4089486702282523', 323, 'AmericanExpress', '09/29', 'ENRS11535');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4950359624948180', 713, 'Discover', '09/25', 'ruPo11997');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('630461356085', 884, 'Mastercard', '03/31', 'DLXw13438');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4462137544552287', 944, 'Discover', '04/31', 'NAgE40286');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('2235157877487943', 264, 'Visa', '01/26', 'SlWY40971');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('6011222272350376', 360, 'Visa', '08/31', 'snQJ29877');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4096310642776', 200, 'Visa', '02/25', 'xUjv31871');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('30367561118420', 654, 'Visa', '07/25', 'MdIV56389');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4413904261902858', 445, 'Discover', '08/33', 'Ydgm27798');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('345150302787459', 506, 'Discover', '07/33', 'PaIW55609');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3571093396456913', 943, 'Mastercard', '11/28', 'rjUg53911');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3589497380049842', 294, 'Visa', '08/32', 'ukwO36229');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('676284887400', 106, 'Visa', '01/31', 'KXIz08608');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('372495797723634', 228, 'Visa', '12/32', 'PNIn87671');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('371252356313161', 905, 'AmericanExpress', '05/24', 'kJaJ17144');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('577564374103', 833, 'Mastercard', '04/30', 'Hiev42044');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('348923432090409', 490, 'Discover', '02/25', 'nzfm46385');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('6011237964637641', 532, 'Discover', '07/29', 'wmYx85684');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('378563090532434', 507, 'Mastercard', '07/33', 'qfkd32307');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('30368358118581', 724, 'Visa', '07/28', 'ZsJc44645');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3533645906871860', 643, 'AmericanExpress', '10/24', 'gcYd75177');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('180043046095958', 440, 'Visa', '01/30', 'XhQI33315');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4424263844488506', 872, 'Visa', '01/25', 'BdXJ65894');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('6011601181499764', 443, 'AmericanExpress', '12/29', 'MBhd90904');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3598077754945905', 306, 'AmericanExpress', '11/29', 'ZaFF24045');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('3548868629123889', 899, 'AmericanExpress', '06/24', 'VIsR63999');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4771353450220902', 161, 'Visa', '06/28', 'VPiM58561');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('30473931961356', 183, 'Discover', '01/25', 'oZKd20725');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4961149077678', 904, 'Mastercard', '09/33', 'ZEQk81161');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('2224595246800788', 262, 'Mastercard', '05/33', 'wtDF05490');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('378193020835291', 960, 'Mastercard', '10/25', 'nKIg32159');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('2713393633972867', 964, 'Discover', '10/31', 'KZcl13395');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4817070395457', 923, 'Visa', '03/31', 'VIlD25559');
INSERT INTO PAYMENT (Card_Number, CVV, Card_Type, Expiration_Date, Customer_ID) VALUES ('4391610753377', 231, 'Visa', '01/24', 'tVJL24995');


-- Insert statements for ORDERS table
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('Qihc25854', '2022-04-17', 960.22, 'bnQz02428', '3548531180336015');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('hpGE99580', '2023-11-03', 192.54, 'PYOq65178', '2292557135936971');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('Mbkv54835', '2022-09-18', 192.12, 'HrZI19196', '2468172526248164');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('sJrl21326', '2022-09-11', 134.56, 'fPlL56524', '2224595246800788');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('jNlC57631', '2022-07-19', 788.6, 'TsBN91958', '38398152002543');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('tmnW51947', '2022-08-08', 396.13, 'PYOq65178', '344743874582281');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('MUsh69526', '2023-04-29', 514.92, 'WaiA80072', '4609415563621207');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('auIl41626', '2023-03-04', 530.17, 'sLxe21841', '378563090532434');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('Wqeg81224', '2022-09-07', 910.85, 'LpoO25319', '38043736738903');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('NBpD34000', '2022-06-01', 238.19, 'yzLt13770', '4764082399426');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('FJiH62759', '2023-04-05', 937.62, 'wEGB28046', '4764082399426');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('eNEa25808', '2023-08-03', 722.05, 'Ngvt34968', '4837907310229604');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('QIrU32191', '2022-02-05', 307.62, 'fPlL56524', '4462137544552287');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('LugS64594', '2022-02-22', 82.33, 'fPlL56524', '180023466489121');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('GbpM64732', '2022-06-28', 47.5, 'oEJI85437', '4853122932728878');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('lLMI47075', '2023-10-27', 19.65, 'WKgF99525', '180040501640906');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('ysLD30775', '2023-07-29', 765.38, 'eAgK63602', '586312089418');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('Iswh75975', '2022-07-24', 902.61, 'CVwj20588', '3534138795819728');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('bwZO67583', '2023-08-12', 298.68, 'MPSO54151', '3599213173475088');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('CSCY48935', '2023-08-15', 990.44, 'Vbta06508', '371252356313161');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('RBRv26677', '2022-11-21', 320.96, 'yQmr91807', '4961149077678');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('WdYw02330', '2023-05-31', 337.49, 'fPlL56524', '4264005743914063');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('jTwB02029', '2023-11-06', 574.05, 'TstN96120', '213128501594586');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('KQZI01016', '2023-09-25', 564.84, 'ZTik28418', '3548868629123889');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('qMVI03706', '2022-08-11', 521.03, 'LSaS41900', '4950359624948180');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('FkOs76265', '2023-11-30', 664.47, 'rMWr44595', '4462137544552287');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('yzuv30441', '2023-07-30', 254.82, 'jgTp27535', '378563090532434');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('MFdn05139', '2023-09-18', 653.45, 'QOKn94841', '373998676200730');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('BwER50047', '2022-09-13', 491.56, 'StVK13381', '6011601181499764');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('haBn06405', '2023-07-30', 322.42, 'TstN96120', '4764082399426');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('QtSG67942', '2023-04-12', 251.22, 'xoRW02664', '30367561118420');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('yxws20235', '2023-12-03', 657.6, 'yTBM21573', '344743874582281');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('pIjM40500', '2023-02-06', 792.02, 'ObMI77004', '6510657502746420');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('uGvf03875', '2023-04-11', 446.96, 'ZTik28418', '4981766731191');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('Zcty32552', '2022-04-14', 12.03, 'WrdK69495', '4916665947702192');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('UZcg83102', '2023-04-04', 272.38, 'RcoN61040', '4961149077678');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('RBup98134', '2023-10-29', 163.26, 'StVK13381', '344743874582281');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('VIKK18602', '2022-10-31', 863.09, 'yEcl34372', '3534138795819728');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('dWAO74683', '2023-07-21', 744.18, 'TsBN91958', '4961149077678');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('pCUr25134', '2022-12-03', 669.63, 'LYBh08816', '3548531180336015');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('ecYw65623', '2023-10-30', 394.85, 'UeVW56691', '378563090532434');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('eoKy01391', '2023-11-09', 650.37, 'StVK13381', '630461356085');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('gnxq36176', '2022-12-29', 115.22, 'cADX41307', '676252495673');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('mYnS57751', '2022-09-26', 917.02, 'mydx30815', '630460788429');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('HjIb50303', '2023-07-15', 351.19, 'eAgK63602', '630461356085');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('tKCe87981', '2023-05-23', 182.83, 'eLsA90030', '4424263844488506');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('ZkbO67239', '2022-04-11', 161.69, 'zFSy89443', '213186710278904');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('OPpO35029', '2021-12-06', 13.34, 'DWLx40589', '4462137544552287');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('hIma97134', '2022-09-19', 768.25, 'cADX41307', '4981766731191');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('thWC24472', '2022-11-06', 489.98, 'eAgK63602', '4424263844488506');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('RVjP99099', '2022-06-17', 79.13, 'iAZB48268', '30473931961356');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('wDNq13420', '2022-04-29', 379.63, 'LYBh08816', '4391610753377');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('OIoQ84590', '2022-10-15', 705.54, 'WrdK69495', '4764082399426');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('tQpF79725', '2022-03-24', 516.15, 'dPME08955', '373998676200730');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('iZuW13044', '2023-09-04', 112.06, 'RPYv42148', '38043736738903');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('lbPf55405', '2021-12-25', 69.94, 'yJxe60278', '30263289432989');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('yObG40533', '2023-09-28', 44.9, 'TWTP71718', '572299968394');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('SUVV38063', '2022-09-18', 129.46, 'Vbta06508', '4981766731191');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('duJG36044', '2022-01-13', 384.4, 'RPYv42148', '3534138795819728');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('dnAf84271', '2023-01-12', 993.35, 'uViF09594', '2252064917455997');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('tIIs71475', '2023-09-25', 701.5, 'kjwI11853', '180023466489121');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('MjDE11141', '2022-03-29', 254.54, 'bzcF92890', '38532708529860');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('UtzN46630', '2023-09-21', 124.35, 'rMWr44595', '4096310642776');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('FKzj43416', '2023-05-18', 618.33, 'xnRy95327', '4867342680933944');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('ssZa29093', '2023-04-14', 450.51, 'rMrc36496', '4096310642776');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('jCTa25694', '2022-11-28', 769.22, 'LpoO25319', '180040501640906');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('LqCk58830', '2022-12-07', 977.07, 'yZnR43043', '180040501640906');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('FAzg77471', '2022-12-12', 70.35, 'FaLV39049', '2468172526248164');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('ffzm09457', '2023-04-23', 733.56, 'wEGB28046', '349668411025491');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('wZzS62646', '2023-09-22', 806.91, 'yZnR43043', '5240881280175193');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('Blxj65350', '2022-12-31', 168.03, 'bnQz02428', '4609415563621207');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('gmVl34056', '2022-12-27', 547.41, 'yEcl34372', '180012949446345');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('OwIz42174', '2023-04-28', 455.78, 'cADX41307', '3587819880515976');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('aRXe11569', '2022-07-23', 927.75, 'WtYp79450', '2720277345451925');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('DyUG10932', '2022-01-08', 692.46, 'WaiA80072', '4413904261902858');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('CZWU33868', '2022-03-22', 974.2, 'oYeN55649', '3548868629123889');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('FajA46698', '2021-12-31', 148.43, 'wEGB28046', '4166680816009279');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('tNvo68886', '2023-07-08', 725.98, 'bTnu02545', '30263289432989');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('qkyR77038', '2023-10-17', 870.79, 'gFpW56226', '3534138795819728');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('iONQ30400', '2023-11-05', 678.61, 'tBHV69076', '3513088506615581');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('kXON70847', '2023-08-03', 484.67, 'FaLV39049', '6510657502746420');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('Odvd06776', '2023-08-23', 694.75, 'bTnu02545', '586312089418');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('eNmI46221', '2022-06-12', 530.05, 'UnGV81372', '6011601181499764');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('hqbj50860', '2023-01-21', 289.68, 'yEcl34372', '349817027923488');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('gFyF33788', '2022-09-27', 702.08, 'bzcF92890', '349668411025491');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('ptWw21384', '2022-07-30', 42.19, 'daun48330', '4867342680933944');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('xQsN43123', '2022-07-17', 510.56, 'nZzD34655', '4413904261902858');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('cWsx82299', '2022-06-03', 300.82, 'TWTP71718', '373998676200730');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('RyYp78594', '2022-03-25', 406.29, 'nVNE12829', '3548531180336015');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('mnzU70477', '2022-11-04', 736.16, 'ywQa68251', '2720277345451925');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('uEQt05303', '2023-10-21', 637.75, 'TWTP71718', '213128501594586');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('QGgj99543', '2022-03-18', 658.5, 'rMWr44595', '38532708529860');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('UUoW45828', '2022-08-02', 482.7, 'rMrc36496', '4166680816009279');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('ZkuY52159', '2023-07-09', 491.62, 'rMrc36496', '4413904261902858');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('gVwZ53245', '2023-04-17', 264.6, 'xnRy95327', '4817070395457');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('HIHI50542', '2023-11-14', 921.28, 'oYeN55649', '180012949446345');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('OLnV85242', '2023-04-26', 576.92, 'nVNE12829', '38361047390770');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('ONUm22618', '2023-04-14', 846.48, 'rDYw09540', '3506547422699481');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('Cdrq01878', '2023-05-14', 902.69, 'UWQU13620', '3599213173475088');
INSERT INTO ORDERS (Order_ID, Order_Date, Total_Amount, Cart_ID, Card_Number) VALUES ('vTLX16965', '2023-01-16', 62.02, 'LSaS41900', '4950359624948180');

-- Insert statements for LINE_ITEM table
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('pdKh07727', '9780375831003', 'BhQW98910', 3);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('bXpN63545', '9780061120084', 'yQmr91807', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('hodY71021', '9780061120084', 'UFuA88885', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('INtv39800', '9780061120084', 'Neaq88968', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('fLOf86281', '9780061120084', 'rDYw09540', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('DQFO05776', '9780061120084', 'GDkw21761', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('TINa81672', '9780061120084', 'RcoN61040', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('ztMi48207', '9780062348678', 'gFpW56226', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('kzMj29051', '9780062348678', 'GLBA19789', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('Vbws13249', '9780062348678', 'KoBZ79472', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('ZfWX27949', '9780062348678', 'yTBM21573', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('nkim46562', '9780062348678', 'TstN96120', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('aWrc95117', '9780735224360', 'BAVg22058', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('dazP24403', '9780375831003', 'eAgK63602', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('seJq41151', '9780735224360', 'MPSO54151', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('UweD27168', '9780735224360', 'diVI04155', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('CTpF81144', '9780735224360', 'MYYI61713', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('vBcn20212', '9780735224360', 'bnQz02428', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('VlmE94266', '9780385618670', 'GDkw21761', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('QEOE07013', '9780385618670', 'eLsA90030', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('FIir29628', '9780385618670', 'WrdK69495', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('ajdH52051', '9780385618670', 'jNAR58942', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('SQhj11760', '9780385618670', 'yEcl34372', 3);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('lwqg07385', '9780307455925', 'yTBM21573', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('AGNj93787', '9780307455925', 'daun48330', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('kLzJ62710', '9781400078776', 'Vbta06508', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('oAep42058', '9781400078776', 'kGlO81672', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('UuRa25347', '9780008172128', 'XahR04105', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('nKLK93182', '9780525555373', 'zFSy89443', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('zbVc90047', '9780062315007', 'XahR04105', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('lLTq96851', '9780735219090', 'rDYw09540', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('PdMM22724', '9780375831003', 'xnRy95327', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('eHEq16704', '9780307455925', 'TsBN91958', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('OMJn79802', '9781501128035', 'rpbV37049', 3);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('MAKX28701', '9780062498533', 'GjMH73150', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('PdHD31284', '9780735219090', 'yZnR43043', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('hyzm63003', '9781501137563', 'oEJI85437', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('GsXc53130', '9780062820150', 'PYOq65178', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('hpWI16599', '9781501175466', 'Ngvt34968', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('IcHd60707', '9780525536291', 'BAVg22058', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('afhC00062', '9780062358202', 'RPYv42148', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('KluK23592', '9781984818485', 'diVI04155', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('DUxP60410', '9781501175466', 'qRso33272', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('yqgy58520', '9780375831003', 'RPYv42148', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('UpAo31911', '9780062315007', 'DCUR15369', 3);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('DoBv23566', '9780062941506', 'DCUR15369', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('wIvq66565', '9781250314208', 'TsBN91958', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('phxe62741', '9781250209764', 'rpbV37049', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('RobA30835', '9780385692443', 'rpbV37049', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('WFbI53723', '9780735211292', 'yzLt13770', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('icQC97216', '9781501161930', 'mydx30815', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('UetS48896', '9780735224315', 'oYeN55649', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('aRXx44623', '9780735224322', 'TsBN91958', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('ffMy11401', '9780735224414', 'kGlO81672', 3);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('qqcA73196', '9780316055437', 'yQmr91807', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('jZNH67145', '9781501173219', 'CVwj20588', 3);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('ONpu22939', '9780316769488', 'TstN96120', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('IMly63244', '9780375831003', 'TsBN91958', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('olVQ24884', '9780345803481', 'bTnu02545', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('NkEp84969', '9781439199312', 'kCit11005', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('aTgo73337', '9780060531041', 'WaiA80072', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('oTIp96696', '9780552159715', 'bzcF92890', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('ALgm93323', '9780385737944', 'dPME08955', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('Mrbd25309', '9780307474278', 'iAZB48268', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('yzdW47714', '9780812981605', 'yJxe60278', 3);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('YIxS90638', '9780393356182', 'TstN96120', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('NSfN34094', '9780385738750', 'TstN96120', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('TPjU81570', '9780142424179', 'ZTik28418', 3);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('dOoB47954', '9780062310627', 'VJtg10369', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('RKtN44109', '9780312427733', 'MPSO54151', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('roud27768', '9780062024039', 'HrZI19196', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('TCHE31394', '9780374533571', 'qoxT50251', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('YeQX97450', '9781501137563', 'WaiA80072', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('mjxq29459', '9780399256752', 'yJxe60278', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('mIkZ19546', '9781439199312', 'Ngvt34968', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('IYwS51354', '9780735224322', 'rMWr44595', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('CDxK98758', '9780735224414', 'FaLV39049', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('OOGR70502', '9780316055437', 'xoRW02664', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('cvUy94090', '9781501173219', 'usLh85797', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('ObPK35900', '9780316769488', 'Neaq88968', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('qDXZ21568', '9780345803481', 'wEGB28046', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('tAGd29390', '9781439199312', 'StVK13381', 3);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('CXZh80683', '9780060531041', 'kCit11005', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('tbHS40552', '9780552159715', 'pwXC51589', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('VbIS12618', '9780385737944', 'RcoN61040', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('epEz82727', '9780307474278', 'yBPR22494', 5);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('pGgX51212', '9780812981605', 'yTBM21573', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('ZaFk65982', '9780393356182', 'rDYw09540', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('oRcf86464', '9780385738750', 'yJxe60278', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('xAXH87976', '9780142424179', 'lqOy32412', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('Njoa37563', '9780062310627', 'WtYp79450', 3);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('dVhL81359', '9780312427733', 'ywQa68251', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('xsQm09847', '9780062024039', 'UeVW56691', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('kMVv01962', '9780374533571', 'LpoO25319', 2);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('HJPa94514', '9781501137563', 'xnRy95327', 3);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('Phzn21485', '9780735224315', 'GDkw21761', 1);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('BTij09559', '9781501161930', 'cbSu74164', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('lfrP62979', '9780735211292', 'KoBZ79472', 4);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('JGNM44079', '9780385692443', 'lqOy32412', 3);
INSERT INTO LINE_ITEM (LineItem_ID, ISBN, Cart_ID, Quantity) VALUES ('ntWJ68886', '9781250209764', 'yEcl34372', 1);

-- Insert statements for SHIPPING_DETAILS table
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('vPwf59620', 'sJrl21326', '367 Long Mall Apt. 575
Griffinhaven, LA 07412', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('hATG73141', 'iONQ30400', '354 Gomez Junctions
Patriciaport, IL 06186', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('fGnf49094', 'QIrU32191', '39952 Sherry Tunnel Suite 064
West Rita, WY 74476', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('lfJD40370', 'LqCk58830', 'PSC 7481, Box 5549
APO AP 53932', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('RbPR69940', 'eNmI46221', '5454 Brenda Corner
North Marie, DC 52477', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('zGQm12656', 'MFdn05139', 'Unit 2006 Box 0726
DPO AE 12792', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('dUOt54663', 'CZWU33868', '28668 Miller Brooks
Deckermouth, RI 07151', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('npJY53110', 'cWsx82299', '95199 Parker Land Apt. 306
Port Taylor, RI 94144', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('fXfe86212', 'ecYw65623', '1164 Lopez Extensions
Marybury, TN 57684', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('znsc24999', 'MUsh69526', '7183 Reese Stravenue Suite 953
North Janicefort, NJ 81348', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('mtFJ95809', 'UZcg83102', '059 Collier Keys Suite 884
Lake Samanthamouth, WY 73674', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('UHbc06175', 'gmVl34056', '9405 Regina Flats Apt. 124
Josetown, AK 48560', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('YKOM41309', 'thWC24472', '91959 Reyes Ways
South Justinmouth, AZ 17211', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('MKVt03487', 'MUsh69526', '739 Johnson Knolls Apt. 734
Albertbury, ID 47975', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('WcHp22366', 'NBpD34000', '04252 Williams Island
West Carrie, WV 86182', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('qnhP41227', 'VIKK18602', '363 Schultz Station Suite 868
New Sethfurt, NC 64385', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('EjmQ94811', 'OLnV85242', 'USNV James
FPO AA 28396', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('fBNI24796', 'uEQt05303', '69272 Fuller Turnpike Apt. 850
Torresland, AL 61016', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('OxBw32784', 'GbpM64732', '1975 Smith Dam Apt. 445
Port Dianemouth, WI 01481', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('YXUK16479', 'LugS64594', '8725 Michael Light Apt. 498
Johnsonside, MS 82783', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('SQiQ10412', 'gFyF33788', '0684 John Valley Suite 349
East Ross, IA 43851', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('hSxM99919', 'gnxq36176', '37747 Jones Walks
Madisonborough, IL 97245', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('KcRO68365', 'pIjM40500', 'PSC 5499, Box 6176
APO AE 04920', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('qqQr53246', 'CSCY48935', '1581 Lisa Locks Suite 112
East Gregoryville, MA 49842', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('UJnz34199', 'UUoW45828', '79565 Brown Lane
Marshallside, IN 21710', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('bTSf42035', 'vTLX16965', '3870 William Shore
Martintown, NV 71757', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('sioQ52695', 'OIoQ84590', '266 Christopher Lane Suite 684
North Sabrinatown, MA 29394', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('HeTF15601', 'haBn06405', '6693 Perry Vista Suite 286
Butlerbury, MN 59231', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('Zuuc15390', 'FajA46698', '74308 Thomas Mountains Suite 643
Alyssaport, OR 02494', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('HaEO37244', 'dnAf84271', '2396 Mark Row Suite 469
New Michael, IN 34696', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('mPap48973', 'tNvo68886', '9646 Megan Mall Suite 721
East Amyfort, SC 80889', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('AfFl56959', 'ffzm09457', '7586 Margaret Path
Perkinsshire, OK 22690', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('gxqJ81736', 'mYnS57751', '279 Tamara Bridge
South Loritown, IA 59799', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('hckr26639', 'mnzU70477', '6441 Arthur Brook
Matthewbury, AL 70738', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('GLqt22511', 'wDNq13420', '5899 Walton Ranch Apt. 884
Rickyport, ND 24355', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('ugbC85565', 'NBpD34000', '911 White Underpass Apt. 735
New Kristyshire, RI 05567', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('evWQ53357', 'ecYw65623', '001 Cole Turnpike Suite 155
North Andrew, OR 30296', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('QxUr22561', 'BwER50047', '5371 Jodi Wells Apt. 471
Larrystad, SC 77299', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('pfYe45280', 'ptWw21384', '5019 Gregory Union Suite 915
North Gabrielle, MD 47241', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('FZTZ57271', 'RVjP99099', '83087 James Radial Suite 068
South Stephenchester, CT 43082', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('aZfh52922', 'mYnS57751', '8895 Mercer Knolls
Helenchester, IN 71621', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('fhtA26123', 'WdYw02330', '3682 James Courts
West Albert, AK 83982', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('ZXpe67455', 'iONQ30400', '522 Heather Course
Yolandaport, KS 06930', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('ftSF29650', 'Qihc25854', '3370 Bonnie Forest Suite 960
South Sandra, IN 46409', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('zmDJ86895', 'hqbj50860', '42992 Justin Park
West Collinmouth, IL 69122', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('BDzt35911', 'yxws20235', '3140 Anderson Shore
South Rebecca, WI 69397', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('hVya15385', 'gnxq36176', '567 Bradford Green Suite 462
Lake Lauriebury, FL 40475', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('Wmsg78318', 'iZuW13044', '3521 Johnson Overpass Suite 900
Gonzalesland, PA 22745', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('AgjK83655', 'auIl41626', '72115 Mary Branch
Franklinstad, FL 56297', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('nEbS78254', 'UtzN46630', '30100 Alexander Road Suite 356
Smithhaven, DC 59654', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('aGNc20614', 'OPpO35029', '6802 Derek Grove Apt. 640
North Gina, NM 47613', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('bgZz59700', 'CSCY48935', '6176 Jacob Road
East Stanley, AK 29352', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('UWBn58084', 'tQpF79725', '587 Shaw Cliff
Holtton, MI 23171', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('nhto90106', 'vTLX16965', '38802 Bonilla Viaduct
North John, KS 94639', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('mzYW47384', 'SUVV38063', '300 Steven Canyon Suite 758
Smithhaven, VT 69962', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('OejU00822', 'FkOs76265', '02996 Wesley Lodge Suite 718
Mcbridehaven, NC 39922', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('SDsC55489', 'MFdn05139', 'USNV Ortiz
FPO AA 87141', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('LTZI53259', 'RVjP99099', '54345 Chelsey River Suite 411
Thomasburgh, CO 39886', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('IQHi09910', 'vTLX16965', '90209 Shelton Squares
Port Derrickmouth, MS 57415', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('ofbO58084', 'Zcty32552', '744 Conner Roads Apt. 709
Jenniferberg, NM 74594', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('gsFd78029', 'yObG40533', '10055 Joanne Union Suite 949
North Leslieland, NJ 39565', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('IZeC04780', 'UUoW45828', '7889 Catherine Cove Apt. 490
Port Reginachester, WY 56085', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('EdAV15303', 'ZkuY52159', 'PSC 0885, Box 9588
APO AP 34569', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('pWIz56751', 'WdYw02330', '305 Kline Bypass
New Brian, AZ 60914', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('NFrB56565', 'qkyR77038', '767 Daniel Lake Suite 893
Port Joymouth, OH 77037', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('mnZi54418', 'pCUr25134', 'USCGC Robinson
FPO AP 25091', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('Kkma53198', 'FKzj43416', '618 Donna Corner
Port Joshua, AK 85758', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('ydzY13879', 'FajA46698', '129 Michaela Cliff Apt. 314
Frenchton, SD 18514', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('Sgrh26336', 'gnxq36176', '439 Debra Cove
Zimmermanmouth, NC 40140', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('ljlC88824', 'Qihc25854', '9153 Chandler Passage Apt. 313
Alexanderstad, VT 97606', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('dbqW38929', 'DyUG10932', '2699 William Rest Apt. 293
Thomaschester, AR 96800', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('XoQZ30845', 'tKCe87981', '510 Brent View
Lauraville, CA 18717', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('mffe57556', 'RBRv26677', '041 Kennedy Freeway Suite 019
South Adrianport, TN 11373', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('HXFO02623', 'FJiH62759', 'PSC 2123, Box 5967
APO AA 83017', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('psjH27914', 'SUVV38063', '259 Ellis Drive
Castillotown, AL 75121', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('rinD77623', 'Iswh75975', '819 Samantha Manors
Kristenland, SC 01633', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('sLcn80258', 'gnxq36176', '8915 Castillo Underpass Suite 853
Kimberlyport, TN 23012', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('rzZx37620', 'uGvf03875', '92343 Frank Fords Apt. 249
East Melissa, VA 05131', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('dZfX16032', 'GbpM64732', '261 Gabriel Views Apt. 614
Jenniferberg, GA 21040', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('WICS60787', 'yzuv30441', '09294 Chapman Wall
Jenniferbury, KS 44094', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('VwjT05635', 'QIrU32191', '570 Michael Coves Apt. 727
Billyhaven, OK 54549', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('GXAa38937', 'qkyR77038', '8644 George Forge
Lake Derekburgh, IL 34946', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('GRWO88052', 'Cdrq01878', 'USNS Nguyen
FPO AE 29185', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('vLVu56008', 'LugS64594', '4993 Meyer Ports
Rhondaside, AR 08615', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('fLvD50981', 'tNvo68886', '31812 Mary Green
South Alan, OR 50157', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('TtZx48082', 'SUVV38063', '89908 Amber Course Apt. 368
Michaelburgh, DC 68378', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('gJdj65314', 'FKzj43416', '8519 Brooke Light
Mariahshire, TN 33606', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('yxIf45724', 'Qihc25854', '826 Nichols Summit
North Christianton, MS 10689', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('jbNT13542', 'UtzN46630', '0722 Sara Underpass Apt. 021
Willisland, AZ 87283', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('bXyN12490', 'gVwZ53245', '877 Francis Mountain
Josephfort, TN 57798', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('ibNz66813', 'jTwB02029', '609 Gregory Pass
Alexandraberg, VA 43369', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('ULvI73058', 'Iswh75975', '80952 Timothy Shoal
South Charles, IA 96005', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('TrWi01238', 'UZcg83102', '249 Hanna Station Suite 050
Brownville, ME 60014', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('AvWY47510', 'gmVl34056', '25971 Paul Centers Suite 245
Ashleetown, ND 66406', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('DluE73609', 'gnxq36176', 'PSC 4708, Box 5449
APO AP 02548', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('NRyE09122', 'FKzj43416', '46664 Contreras Flat Suite 937
East Alexandrachester, OH 01063', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('zUDt11525', 'sJrl21326', '541 Brown Hills
Lake Felicialand, OH 25954', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('YNtR28138', 'lbPf55405', '65215 White Field Apt. 330
West Michaelside, WI 33237', False);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('lMHj26940', 'NBpD34000', '835 Gonzalez Rapids Apt. 723
Port Paul, HI 19978', True);
INSERT INTO SHIPPING_DETAILS (Shipping_ID, Order_ID, Address, Delivery_Status) VALUES ('Rglr00100', 'QtSG67942', '02234 Christine Overpass
North Alexander, AL 78131', True);
