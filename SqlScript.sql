USE [TaraBank]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Balance] [float] NULL,
	[CustomerId] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[AccountTypeId] [int] NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK__Account__3214EC07CC3A0046] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountType]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Gender] [nvarchar](10) NULL,
	[Birthday] [date] NULL,
	[IsStatus] [bit] NULL,
	[IsBlock] [bit] NULL,
	[IsDelete] [bit] NULL,
	[CustomerNo] [nvarchar](10) NULL,
	[Password] [nchar](4) NULL,
	[ErrorPasswordCount] [int] NULL,
	[TCNo] [nvarchar](11) NULL,
 CONSTRAINT [PK__Customer__3214EC078AF64776] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerInformation]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](500) NULL,
	[Phone] [nvarchar](11) NULL,
	[Email] [nvarchar](250) NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK__Customer__3214EC0711F04E8C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[DepartmentId] [int] NULL,
	[PermissionId] [int] NULL,
	[IsStatus] [bit] NULL,
	[IsDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transfer]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transfer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SenderCustomerNo] [nvarchar](10) NULL,
	[ReceiverCustomerNo] [nvarchar](10) NULL,
	[Price] [float] NULL,
	[TransferDate] [date] NULL,
	[TransferType] [nvarchar](50) NULL,
 CONSTRAINT [PK__Transfer__3214EC07429C3E73] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__Balance__52593CB8]  DEFAULT ((1500)) FOR [Balance]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__IsStatu__534D60F1]  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__IsDelet__5441852A]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsStat__49C3F6B7]  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsBloc__4AB81AF0]  DEFAULT ((0)) FOR [IsBlock]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsDele__4BAC3F29]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Transfer] ADD  CONSTRAINT [DF__Transfer__Transf__5EBF139D]  DEFAULT (getdate()) FOR [TransferDate]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_AccountType] FOREIGN KEY([AccountTypeId])
REFERENCES [dbo].[AccountType] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_AccountType]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Customer]
GO
ALTER TABLE [dbo].[CustomerInformation]  WITH CHECK ADD  CONSTRAINT [FK_CustomerInformation_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[CustomerInformation] CHECK CONSTRAINT [FK_CustomerInformation_Customer]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Department]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Permission] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permission] ([Id])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Permission]
GO
/****** Object:  StoredProcedure [dbo].[AddCustomer]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Müşteri Ekleme Procedure

--Müşteri eklerken daha önce müşterinin var olup olmadığını kontrol et.
--TCNo aynı olana kaydolmayacak
--Bu müşteri mevcut değeri döndüreceğiz.
-- Müşteriyi eklemek için sadece müdür veya müdür yardımcısı ekleyebilir.

create proc [dbo].[AddCustomer]
@StaffId int,
@CustomerName nvarchar(50),
@CustomerSurname nvarchar(50),
@CustomerBirthDay date,
@CustomerAge int,
@CustomerGender nvarchar(10),
@CustomerTCNo nvarchar(11)

as
begin
	begin try
	begin tran addcustomer
	declare @Permission nvarchar(50)
	declare @IsCustomer int

	set @Permission = (select Permission.Name from Staff 
					  inner join Permission
					  on(Staff.PermissionId=Permission.Id)
					  where staff.Id=@StaffId)
	if(@Permission='Müdür' or @Permission='Müdür Yardımcısı')begin
		set @IsCustomer = (select Count(*) from Customer where TCNo = @CustomerTCNo)
		if(@IsCustomer=0) begin
			insert into Customer(Name,Surname,Birthday,Age,Gender,TCNo,Password,ErrorPasswordCount)
			values( @CustomerName,
					@CustomerSurname,
					@CustomerBirthDay,
					@CustomerAge,
					@CustomerGender,
					@CustomerTCNo,
					'1234',0)
					print 'Müşteri Ekleme Başarılı.'
					declare @CustomerNo nvarchar(10)
					set @CustomerNo = (select CustomerNo from Customer where TCNo = @CustomerTCNo)
					print 'Müşteri Numaranız: ' + @CustomerNo
		end
		else begin
		print 'Var olan müşteri tekrar eklenemez.'
		end
	end
	else begin 
	print 'Yetersiz Yetki. Lütfen Yetkili Biri Müşteri Ekleme İşlemini Yapsın.'
	end
	commit tran addcustomer
	end try
	begin catch
	rollback tran addcustomer
	print 'Beklenmedik Bir Hata Oluştu.'
	end catch
end

GO
/****** Object:  StoredProcedure [dbo].[AtmParaCekme]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[AtmParaCekme]
@CustomerNo nvarchar(10),
@Password nchar(4),
@Price float
as
begin
	begin try
	begin tran paracekme
    declare @IsCustomer int
    declare @IsPassword nchar(4)
    declare @ErrorPasswordCount int
    declare @IsBlock bit
    declare @Balance float
    select
        @IsCustomer=Id,
        @IsPassword=[Password],
        @ErrorPasswordCount=ErrorPasswordCount,
        @IsBlock=IsBlock
		
    from Customer where CustomerNo=@CustomerNo
	set @Balance=(select Balance from Account where CustomerId=@IsCustomer)
    if(@IsCustomer>0)begin
        if(@Password=@IsPassword)begin
            if(@IsBlock=0) begin
			if(@Balance>=@Price)begin
                update Customer set ErrorPasswordCount=0 where CustomerNo=@CustomerNo
                update Account set Balance=Balance-@Price where CustomerId=@IsCustomer
                insert into [Transfer](SenderCustomerNo,ReceiverCustomerNo,Price,TransferType)
                values(@CustomerNo,@CustomerNo,@Price*(-1),'Withdraw')
                set @Balance=(select Balance from Account where CustomerId=@IsCustomer)
                Print 'Para Çekme İşlemi Başarılı'
                Print 'Çekilen Tutar: '+cast(@Price as nvarchar)+' TL'
                Print 'Toplam Bakiye: '+cast(@Balance as nvarchar)+' TL'
            end
			else print 'Bakiyeniz Yetersiz'
			end
            else begin
                Print 'Hesabınız Bloke Olduğundan Dolayı Giriş Yapamazsınız.'
                Print 'Lütfen Müşreti Hizmetleri İle İletişime Geçiniz.'
            end
        end
        else begin
            set @ErrorPasswordCount=@ErrorPasswordCount+1
            update Customer set ErrorPasswordCount=@ErrorPasswordCount where CustomerNo=@CustomerNo
            if(@ErrorPasswordCount>=3) begin
                print 'Şifreyi 3 Defa Hatalı Girdiğinizden Dolayı Hesabınız Bloke Oldu'
                update Customer set IsBlock=1 where CustomerNo=@CustomerNo
            end
            print cast(@ErrorPasswordCount as nvarchar)+' Hatalı Şifre Girildi'
        end
    end
    else begin
        print 'Hesap Bulunamadı.'
    end
	commit tran paracekme
	end try
	begin catch
		Print 'Beklenmedik bir hata oluştu.'
		rollback tran paracekme
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[AtmParaYatirma]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[AtmParaYatirma]
@CustomerNo nvarchar(10),
@Password nchar(4),
@Price float
as
begin
begin try
begin tran parayatirma
    declare @IsCustomer int
    declare @IsPassword nchar(4)
    declare @ErrorPasswordCount int
    declare @IsBlock bit
    declare @Balance float
    select
        @IsCustomer=Id,
        @IsPassword=[Password],
        @ErrorPasswordCount=ErrorPasswordCount,
        @IsBlock=IsBlock
    from Customer where CustomerNo=@CustomerNo

    if(@IsCustomer>0)begin
        if(@Password=@IsPassword)begin
            if(@IsBlock=0) begin
                update Customer set ErrorPasswordCount=0 where CustomerNo=@CustomerNo
                update Account set Balance=Balance+@Price where CustomerId=@IsCustomer
                insert into [Transfer](SenderCustomerNo,ReceiverCustomerNo,Price,TransferType)
                values(@CustomerNo,@CustomerNo,@Price,'Deposit')
                set @Balance=(select Balance from Account where CustomerId=@IsCustomer)
                Print 'Para Yatırma İşlemi Başarılı'
                Print 'Yatırılan Tutar: '+cast(@Price as nvarchar)+' TL'
                Print 'Toplam Bakiye: '+cast(@Balance as nvarchar)+' TL'
            end
            else begin
                Print 'Hesabınız Bloke Olduğundan Dolayı Giriş Yapamazsınız.'
                Print 'Lütfen Müşreti Hizmetleri İle İletişime Geçiniz.'
            end
        end
        else begin
            set @ErrorPasswordCount=@ErrorPasswordCount+1
            update Customer set ErrorPasswordCount=@ErrorPasswordCount where CustomerNo=@CustomerNo
            if(@ErrorPasswordCount>=3) begin
                print 'Şifreyi 3 Defa Hatalı Girdiğinizden Dolayı Hesabınız Bloke Oldu'
                update Customer set IsBlock=1 where CustomerNo=@CustomerNo
            end
            print cast(@ErrorPasswordCount as nvarchar)+' Hatalı Şifre Girildi'
        end
    end
    else begin
        print 'Hesap Bulunamadı.'
    end
	end try
	begin catch
	print 'Beklenmedik bir hata oluştu.'
	rollback tran parayatirma
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[CustomerInfo]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CustomerInfo]
@CustomerNo nvarchar(10)
as
begin
if(@CustomerNo = (select CustomerNo from Customer where CustomerNo=@CustomerNo))begin
declare @CustomerIsDelete bit
set @CustomerIsDelete = (Select IsDelete from Customer where CustomerNo=@CustomerNo)
if(@CustomerIsDelete = 0)begin
select * from Customer
inner join Account on (Account.CustomerId=Customer.Id)
where CustomerNo=@CustomerNo
end
else print 'Bu Müşteri Daha Önceden Silinmiş.'


end
else print 'Böyle Bir Müşteri Bulunamadı.'



end
GO
/****** Object:  StoredProcedure [dbo].[DeleteCustomer]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DeleteCustomer]

@StaffId int,
@CustomerNo nvarchar(10)
as
begin
    declare @IsCustomer int
    declare @IsDelete bit
    declare @Permission nvarchar(10)
    begin try
        begin tran deleteCustomer
            set @IsCustomer=(select COUNT(*) from Customer where CustomerNo=@CustomerNo)
            select @Permission=Permission.Name from Staff inner join Permission on(Staff.PermissionId=Permission.Id)
            where Staff.Id=@StaffId
            if(@Permission='Müdür') begin
                if(@IsCustomer=1) begin
                    select @IsDelete=IsDelete from Customer where CustomerNo=@CustomerNo
                    if(@IsDelete=0) begin
                        update Customer set IsDelete=1 where CustomerNo=@CustomerNo
                    end
                    else begin
                        print @CustomerNo+' No''lu Müşteri Önceden Silinmiştir.'
                    end
                end
                else begin
                    print @CustomerNo+' No''lu Müşteri Bulunamadı'
                end
            end
            else begin
                Print 'Silme için yetkiniz bulunmuyor. Lütfen yetkili biri işlem yapsın'
            end

        commit tran deleteCustomer
    end try
    begin catch
        rollback tran deleteCustomer
        print 'Beklenmedik Bir Haata Oluştu'
    end catch
end
GO
/****** Object:  StoredProcedure [dbo].[ToplamaIslemi]    Script Date: 15.05.2024 09:47:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--transaction işlemi

create proc [dbo].[ToplamaIslemi]
@sayi1 tinyint,
@sayi2 tinyint
as
begin
	declare @sonuc float
	begin try  
		begin tran hesaplama
		set @sonuc = @sayi1 + @sayi2
		commit tran hesaplama
		--begin tran hesaplama2

		--commit hesaplama2

	end try
	begin catch
		rollback tran hesaplama --tekli transactionın iptali
		--rollback tran hesaplama2
		--rollback tran --bütün transactionların iptali

		print 'Beklenmedik bir hata oluştu.'
	end catch

end
GO
