CREATE DATABASE [challenge_two_easy]
GO

USE [challenge_two_easy]
GO

CREATE TABLE [dbo].[books](
 [id] [int] IDENTITY(1,1) NOT NULL,
 [title] [varchar](63) NOT NULL,
 [isbn] [varchar](63) NOT NULL,
 [description] [varchar](63) NOT NULL,
CONSTRAINT [PK_books] PRIMARY KEY CLUSTERED
(
 [id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[books] ON
GO
INSERT [dbo].[books] ([id], [title], [isbn], [description]) VALUES (1, N'Clean Code : A Handbook of Agile Software Craftsmanship', N'9780132350884', N'A good code is a readable code.')
INSERT [dbo].[books] ([id], [title], [isbn], [description]) VALUES (2, N'HTML & CSS: Design and Build Web Sites', N'9781118008188', N'The World Wide Web might be the future, be ready.')
INSERT [dbo].[books] ([id], [title], [isbn], [description]) VALUES (3, N'Cracking the Coding Interview', N'9780984782857', N'Get ready for the future.')
INSERT [dbo].[books] ([id], [title], [isbn], [description]) VALUES (4, N'Coding For Dummies', N'9781119293323', N'To code or not to code, that''s the real question.')
INSERT [dbo].[books] ([id], [title], [isbn], [description]) VALUES (5, N'C# in Depth', N'9781617291340', N'The devil lies in the details.')
INSERT [dbo].[books] ([id], [title], [isbn], [description]) VALUES (6, N'Norwegian Wood', N'4-06-203516-2', N'Murakami, good''ol classic stories.')
INSERT [dbo].[books] ([id], [title], [isbn], [description]) VALUES (7, N'Kafka on the Shore', N'1-84343-110-6', N'Umibe no Kafuka, more Murakami, good stuff.')
INSERT [dbo].[books] ([id], [title], [isbn], [description]) VALUES (8, N'O Livro Dos Códigos', N'EAN - 9788501055989', N'A história de/do código.')
INSERT [dbo].[books] ([id], [title], [isbn], [description]) VALUES (9, N'Harry Potter and the Philosopher''s Stone', N'978-0-7475-3269-9', N'You''re a wizard, Harry.')
INSERT [dbo].[books] ([id], [title], [isbn], [description]) VALUES (10, N'Harry Potter and the Deathly Hallows', N'0-7475-9105-9', N'After all this time ? - Always.')
INSERT [dbo].[books] ([id], [title], [isbn], [description]) VALUES (11, N'The Wonderful Wizard of Oz', N'released on 17-05-1900 N/D', N'"Buckle your seat belt Dorothy, ''cause Kansas is going bye-bye.')
INSERT [dbo].[books] ([id], [title], [isbn], [description]) VALUES (12, N'The Bourne Identity', N'0-399-90070-5', N'How could I forget about you? You''re the only person I know.')
INSERT [dbo].[books] ([id], [title], [isbn], [description]) VALUES (13, N'The Lord Of The Rings', N'978-0544003415', N'It is not despair..') SET IDENTITY_INSERT [dbo].[books] OFF
GO

ALTER DATABASE [challenge_two_easy] SET READ_WRITE
GO