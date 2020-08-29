INSERT INTO folders (folders_id, folders_name)
VALUES 
  (1, 'FBI Agent Notes'),
  (2, 'Suspicious Disney Characters'),
  (3, 'Things that go "vroom vroom"');


INSERT INTO notes (notes_id, notes_name, notes_content, folders_id)
VALUES
  (1, 'I see you', 'I think a man lives in my camera and is watching me. He is 
  probably wearing a black suit and laughing with his buddies while he watches
  me browse the internet. I believe he works for the FBI', 1),
  (2, 'I heard him', 'I pushed my ear up to the camera. I heard him. He was trying
  to hold his breath as he watched me lean in close. But, I heard three distince inhale 
  and exhales', 1),
  (3, 'Mickey Mouse', 'Hey everybody...Shady right? How does he know how many
  people are watching him. Mickey is up to something, and I plan to find out what.', 2), 
  (4, 'Goofy', 'How come Goofy can stand up and talk, but Pluto can not?', 2),  
  (5, 'It was just me', 'I tried to listen to Terry breathe again (I gave him
  a name). But when I leaned in close, I realized it was just me breathing 
  really hard trying to listen to him. You win this time, Terry.', 1), 
  (6, 'Cars', 'Car no go space. Car go road. Car go vroom vroom.', 3), 
  (7, 'Usain Bolt', 'Vrooooooooooooooooooooom', 3);