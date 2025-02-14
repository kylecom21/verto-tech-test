CREATE TABLE TextContent (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Section TEXT NOT NULL,
    Key TEXT NOT NULL,
    Value TEXT NOT NULL,
    UNIQUE (Section, Key)
);

CREATE TABLE ImageContent (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Section TEXT NOT NULL,
    Key TEXT NOT NULL,
    ImagePath TEXT NOT NULL,
    AltText TEXT NOT NULL,
    UNIQUE (Section, Key)
);

INSERT INTO TextContent (Section, Key, Value) VALUES 
('Header', 'Tab1', 'Home'),
('Header', 'Tab2', 'Services'),
('Header', 'Tab3', 'Sustainability'),
('Header', 'Tab4', 'Our Work'),
('Header', 'Tab5', 'Resources'),
('Header', 'Tab6', 'About iOTA'),
('Header', 'Tab7', 'Get in Touch'),

('Tabs', 'Top', 'HAVE A PROJECT?'),
('Tabs','OnImage','EXPLORE OUR WORK'),

('TxtOnImage', 'Title', 'Creating Exceptional <br> Workspaces'),

('Services', 'Heading', 'Custom built design <br> & furniture solutions'),
('Services', 'TxtBlock', 'Specialists in transforming commerical space into <br> agile, functional and empowering environments'),
('Services', 'Tab', 'WHAT WE DO'),
('Services', 'Heading2', 'Explore our latest work...'),

('ServicesPanel', 'Subheading', 'Case Study Name Here'),
('ServicesPanel', 'Description', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam justo duo dolores'),
('ServicesPanel', 'Footer', 'VIEW MORE'),

("Bottom" , 'IconTxt1', "Office"),
("Bottom" , 'IconTxt2', "Education"),
("Bottom" , 'IconTxt3', "Healthcare"),
("Bottom" , 'IconTxt4', "Hospitality"),

('Bottom', 'Heading', 'Discover more about iOTA'),
('Bottom', 'Content', 'Find out who we are, why we do it and why we love what we do.'),

('Bottom', 'Tab1', 'WATCH THE VIDEO'),
('Bottom', 'Tab2', 'ABOUT iOTA'),

('Footer', 'T&C', 'Terms & Conditions'),
('Footer', 'Copyright', '© iOTA Interiors Limited iOTA Office Furniture'),
('Footer', 'Site', 'Site by Verto'),
('Footer', 'Office', 'Head Office:<br>
The Crabtree, Quinton Green Park, Quinton,<br> Northampton, NN7 2EG'),
('Footer', 'Contact', 'Connect with Us'),
('Footer', 'Contact2', 'Like Us'),
('Footer', 'PhoneNumber', '+44(0)1604289630'),
('Footer', 'Email', 'hello@iotaofficefurniture.co.uk');


INSERT INTO ImageContent (Section, Key, ImagePath, AltText) VALUES 
('Circle', 'CircleIcons', 'images/circle-icons.png', 'Circle Icons'),
('Icons', 'Office', '/images/Group-456.png', 'Office Icon'),
('Icons', 'Education', '/images/Group-457.png', 'Education Icon'),
('Icons', 'Healthcare', '/images/Group-458.png', 'Healthcare Icon'),
('Icons', 'Hospitality', '/images/Group-459.png', 'Hospitality Icon'),
('Gallery', 'BtmImage', '/images/image1.png', 'Bottom Image'),
('Gallery', 'PanelImage3', '/images/image2.png', 'Panel image 3'),
('Gallery', 'PanelImage2', '/images/image3.png', 'Panel image 2'),
('Gallery', 'TopImage', '/images/image4.png', 'Top Image'),
('Gallery', 'PanelImage1', '/images/image5.png', 'Panel Image 1'),
('Logos', 'LogoPNG', '/images/logo.png', 'Logo in PNG format'),
('Logos', 'LogoSVG', '/images/logo.svg', 'Logo in SVG format'),
('Search', 'SearchIcon', '/images/search.png', 'Search icon'),
('Shadows', 'ShadowHor', '/images/shadowhor.png', 'Horizontal shadow image'),
('Shadows', 'ShadowSmall', '/images/shadowsmall.png', 'Small shadow image'),
('Shadows', 'ShadowTall', '/images/shadowtall.png', 'Tall shadow image');