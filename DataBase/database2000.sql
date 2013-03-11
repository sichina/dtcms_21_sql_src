/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     2012/11/30 20:33:49                          */
/*==============================================================*/


if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_article_albums') and o.name = 'FK_DT_ARTIC_REFERENCE_DT_ARTIC_ALBUMS')
alter table dt_article_albums
   drop constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_ALBUMS
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_article_comment') and o.name = 'FK_DT_ARTIC_REFERENCE_DT_ARTIC_COMMENT')
alter table dt_article_comment
   drop constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_COMMENT
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_article_content') and o.name = 'FK_DT_ARTIC_REFERENCE_DT_ARTIC_CONTENT')
alter table dt_article_content
   drop constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_CONTENT
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_article_diggs') and o.name = 'FK_DT_ARTIC_REFERENCE_DT_ARTIC_DIGGS')
alter table dt_article_diggs
   drop constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_DIGGS
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_article_download') and o.name = 'FK_DT_ARTIC_REFERENCE_DT_ARTIC_DOWNLOAD')
alter table dt_article_download
   drop constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_DOWNLOAD
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_article_goods') and o.name = 'FK_DT_ARTIC_REFERENCE_DT_ARTIC_GOODS')
alter table dt_article_goods
   drop constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_GOODS
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_article_news') and o.name = 'FK_DT_ARTIC_REFERENCE_DT_ARTIC_NEWS')
alter table dt_article_news
   drop constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_NEWS
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_attribute_value') and o.name = 'FK_DT_ATTRI_REFERENCE_DT_ARTIC_VALUE')
alter table dt_attribute_value
   drop constraint FK_DT_ATTRI_REFERENCE_DT_ARTIC_VALUE
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_attribute_value') and o.name = 'FK_DT_ATTRI_REFERENCE_DT_ATTRI_ATTR')
alter table dt_attribute_value
   drop constraint FK_DT_ATTRI_REFERENCE_DT_ATTRI_ATTR
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_download_attach') and o.name = 'FK_DT_DOWNL_REFERENCE_DT_ARTIC_ATTACH')
alter table dt_download_attach
   drop constraint FK_DT_DOWNL_REFERENCE_DT_ARTIC_ATTACH
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_goods_group_price') and o.name = 'FK_DT_GOODS_REFERENCE_DT_ARTIC_PRICE')
alter table dt_goods_group_price
   drop constraint FK_DT_GOODS_REFERENCE_DT_ARTIC_PRICE
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_manager') and o.name = 'FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE')
alter table dt_manager
   drop constraint FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_manager_role_value') and o.name = 'FK_DT_MANAG_REFERENCE_DT_MANAG')
alter table dt_manager_role_value
   drop constraint FK_DT_MANAG_REFERENCE_DT_MANAG
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_order_goods') and o.name = 'FK_DT_ORDER_REFERENCE_DT_ORDER')
alter table dt_order_goods
   drop constraint FK_DT_ORDER_REFERENCE_DT_ORDER
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_sys_channel') and o.name = 'FK_DT_SYS_C_REFERENCE_DT_SYS_M')
alter table dt_sys_channel
   drop constraint FK_DT_SYS_C_REFERENCE_DT_SYS_M
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_sys_model_nav') and o.name = 'FK_DT_SYS_M_REFERENCE_DT_SYS_M')
alter table dt_sys_model_nav
   drop constraint FK_DT_SYS_M_REFERENCE_DT_SYS_M
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_user_code') and o.name = 'FK_DT_USER__REFERENCE_DT_USERS_CODE')
alter table dt_user_code
   drop constraint FK_DT_USER__REFERENCE_DT_USERS_CODE
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_user_login_log') and o.name = 'FK_DT_USER__REFERENCE_DT_USERS_LOG')
alter table dt_user_login_log
   drop constraint FK_DT_USER__REFERENCE_DT_USERS_LOG
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dt_users') and o.name = 'FK_DT_USERS_REFERENCE_DT_USER_')
alter table dt_users
   drop constraint FK_DT_USERS_REFERENCE_DT_USER_
go

if exists (select 1
            from  sysobjects
           where  id = object_id('view_article_content')
            and   type = 'V')
   drop view view_article_content
go

if exists (select 1
            from  sysobjects
           where  id = object_id('view_article_download')
            and   type = 'V')
   drop view view_article_download
go

if exists (select 1
            from  sysobjects
           where  id = object_id('view_article_goods')
            and   type = 'V')
   drop view view_article_goods
go

if exists (select 1
            from  sysobjects
           where  id = object_id('view_article_news')
            and   type = 'V')
   drop view view_article_news
go

if exists (select 1
            from  sysobjects
           where  id = object_id('view_sys_channel')
            and   type = 'V')
   drop view view_sys_channel
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_amount_log')
            and   type = 'U')
   drop table dt_amount_log
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_article')
            and   type = 'U')
   drop table dt_article
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_article_albums')
            and   type = 'U')
   drop table dt_article_albums
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_article_comment')
            and   type = 'U')
   drop table dt_article_comment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_article_content')
            and   type = 'U')
   drop table dt_article_content
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_article_diggs')
            and   type = 'U')
   drop table dt_article_diggs
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_article_download')
            and   type = 'U')
   drop table dt_article_download
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_article_goods')
            and   type = 'U')
   drop table dt_article_goods
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_article_news')
            and   type = 'U')
   drop table dt_article_news
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_attribute_value')
            and   type = 'U')
   drop table dt_attribute_value
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_attributes')
            and   type = 'U')
   drop table dt_attributes
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_category')
            and   type = 'U')
   drop table dt_category
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_distribution')
            and   type = 'U')
   drop table dt_distribution
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_download_attach')
            and   type = 'U')
   drop table dt_download_attach
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_goods_group_price')
            and   type = 'U')
   drop table dt_goods_group_price
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_mail_template')
            and   type = 'U')
   drop table dt_mail_template
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_manager')
            and   type = 'U')
   drop table dt_manager
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_manager_log')
            and   type = 'U')
   drop table dt_manager_log
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_manager_role')
            and   type = 'U')
   drop table dt_manager_role
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_manager_role_value')
            and   type = 'U')
   drop table dt_manager_role_value
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_order_goods')
            and   type = 'U')
   drop table dt_order_goods
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_orders')
            and   type = 'U')
   drop table dt_orders
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_payment')
            and   type = 'U')
   drop table dt_payment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_point_log')
            and   type = 'U')
   drop table dt_point_log
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_sys_channel')
            and   type = 'U')
   drop table dt_sys_channel
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_sys_model')
            and   type = 'U')
   drop table dt_sys_model
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_sys_model_nav')
            and   type = 'U')
   drop table dt_sys_model_nav
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_user_code')
            and   type = 'U')
   drop table dt_user_code
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_user_groups')
            and   type = 'U')
   drop table dt_user_groups
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_user_login_log')
            and   type = 'U')
   drop table dt_user_login_log
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_user_message')
            and   type = 'U')
   drop table dt_user_message
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_users')
            and   type = 'U')
   drop table dt_users
go

/*==============================================================*/
/* Table: dt_amount_log                                         */
/*==============================================================*/
create table dt_amount_log (
   id                   int                  identity,
   user_id              int                  null,
   user_name            nvarchar(100)        null,
   type                 nvarchar(50)         null,
   order_no             nvarchar(100)        null default '',
   payment_id           int                  null default 0,
   value                decimal(9,2)         null default 0,
   remark               nvarchar(500)        null default '',
   status               tinyint              null default 0,
   add_time             datetime             null default getdate(),
   complete_time        datetime             null,
   constraint PK_DT_AMOUNT_LOG primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_amount_log', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�ID',
   'user', @CurrentUser, 'table', 'dt_amount_log', 'column', 'user_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û���',
   'user', @CurrentUser, 'table', 'dt_amount_log', 'column', 'user_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_amount_log', 'column', 'type'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'dt_amount_log', 'column', 'order_no'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '֧����ʽ',
   'user', @CurrentUser, 'table', 'dt_amount_log', 'column', 'payment_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ֵ',
   'user', @CurrentUser, 'table', 'dt_amount_log', 'column', 'value'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע˵��',
   'user', @CurrentUser, 'table', 'dt_amount_log', 'column', 'remark'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬0',
   'user', @CurrentUser, 'table', 'dt_amount_log', 'column', 'status'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'dt_amount_log', 'column', 'add_time'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ʱ��',
   'user', @CurrentUser, 'table', 'dt_amount_log', 'column', 'complete_time'
go

/*==============================================================*/
/* Table: dt_article                                            */
/*==============================================================*/
create table dt_article (
   id                   int                  identity,
   channel_id           int                  not null default 0,
   category_id          int                  not null default 0,
   title                nvarchar(100)        null,
   link_url             nvarchar(255)        null default '',
   img_url              nvarchar(255)        null default '',
   seo_title            nvarchar(255)        null default '',
   seo_keywords         nvarchar(255)        null default '',
   seo_description      nvarchar(255)        null default '',
   content              ntext                null,
   sort_id              int                  null default 99,
   click                int                  null default 0,
   is_lock              tinyint              null default 0,
   user_id              int                  null default 0,
   add_time             datetime             null default getdate(),
   constraint PK_DT_ARTICLE primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ƶ��ID',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'channel_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ID',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'category_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ⲿ����',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'link_url'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ͼƬ��ַ',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'img_url'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'SEO����',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'seo_title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'SEO�ؽ���',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'seo_keywords'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'SEO����',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'seo_description'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ϸ����',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'content'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'sort_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'click'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�����0����1δ���2����',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'is_lock'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�ID',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'user_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'dt_article', 'column', 'add_time'
go

/*==============================================================*/
/* Table: dt_article_albums                                     */
/*==============================================================*/
create table dt_article_albums (
   id                   int                  identity,
   article_id           int                  null,
   big_img              nvarchar(255)        null,
   small_img            nvarchar(255)        null,
   remark               nvarchar(500)        null default '',
   constraint PK_DT_ARTICLE_ALBUMS primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_article_albums', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_article_albums', 'column', 'article_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ͼ',
   'user', @CurrentUser, 'table', 'dt_article_albums', 'column', 'big_img'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Сͼ',
   'user', @CurrentUser, 'table', 'dt_article_albums', 'column', 'small_img'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_article_albums', 'column', 'remark'
go

/*==============================================================*/
/* Table: dt_article_comment                                    */
/*==============================================================*/
create table dt_article_comment (
   id                   int                  identity,
   article_id           int                  null,
   user_id              int                  null default 0,
   user_name            nvarchar(100)        null,
   user_ip              nvarchar(255)        null,
   content              ntext                null,
   is_lock              tinyint              null default 0,
   add_time             datetime             null default getdate(),
   is_reply             tinyint              null default 0,
   reply_content        ntext                null,
   reply_time           datetime             null,
   constraint PK_DT_ARTICLE_COMMENT primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_article_comment', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_article_comment', 'column', 'article_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�ID',
   'user', @CurrentUser, 'table', 'dt_article_comment', 'column', 'user_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û���',
   'user', @CurrentUser, 'table', 'dt_article_comment', 'column', 'user_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�IP',
   'user', @CurrentUser, 'table', 'dt_article_comment', 'column', 'user_ip'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_article_comment', 'column', 'content'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�����',
   'user', @CurrentUser, 'table', 'dt_article_comment', 'column', 'is_lock'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'dt_article_comment', 'column', 'add_time'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ��Ѵ�',
   'user', @CurrentUser, 'table', 'dt_article_comment', 'column', 'is_reply'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'dt_article_comment', 'column', 'reply_content'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ظ�ʱ��',
   'user', @CurrentUser, 'table', 'dt_article_comment', 'column', 'reply_time'
go

/*==============================================================*/
/* Table: dt_article_content                                    */
/*==============================================================*/
create table dt_article_content (
   id                   int                  null,
   call_index           nvarchar(50)         null default '',
   is_msg               tinyint              null default 0,
   is_red               tinyint              null default 0
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_article_content', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ñ���',
   'user', @CurrentUser, 'table', 'dt_article_content', 'column', 'call_index'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ���������',
   'user', @CurrentUser, 'table', 'dt_article_content', 'column', 'is_msg'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ��Ƽ�',
   'user', @CurrentUser, 'table', 'dt_article_content', 'column', 'is_red'
go

/*==============================================================*/
/* Table: dt_article_diggs                                      */
/*==============================================================*/
create table dt_article_diggs (
   id                   int                  null,
   digg_good            int                  null default 0,
   digg_bad             int                  null default 0
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_article_diggs', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��һ��',
   'user', @CurrentUser, 'table', 'dt_article_diggs', 'column', 'digg_good'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��һ��',
   'user', @CurrentUser, 'table', 'dt_article_diggs', 'column', 'digg_bad'
go

/*==============================================================*/
/* Table: dt_article_download                                   */
/*==============================================================*/
create table dt_article_download (
   id                   int                  null,
   is_msg               tinyint              null default 0,
   is_red               tinyint              null default 0
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_article_download', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ���������',
   'user', @CurrentUser, 'table', 'dt_article_download', 'column', 'is_msg'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ��Ƽ�',
   'user', @CurrentUser, 'table', 'dt_article_download', 'column', 'is_red'
go

/*==============================================================*/
/* Table: dt_article_goods                                      */
/*==============================================================*/
create table dt_article_goods (
   id                   int                  null,
   goods_no             nvarchar(100)        null default '',
   stock_quantity       int                  null default 0,
   market_price         decimal(9,2)         null default 0,
   sell_price           decimal(9,2)         null default 0,
   point                int                  null,
   is_msg               tinyint              null default 0,
   is_top               tinyint              null default 0,
   is_red               tinyint              null default 0,
   is_hot               tinyint              null default 0,
   is_slide             tinyint              null default 0
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_article_goods', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ʒ����',
   'user', @CurrentUser, 'table', 'dt_article_goods', 'column', 'goods_no'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�������',
   'user', @CurrentUser, 'table', 'dt_article_goods', 'column', 'stock_quantity'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�г��۸�',
   'user', @CurrentUser, 'table', 'dt_article_goods', 'column', 'market_price'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ۼ۸�',
   'user', @CurrentUser, 'table', 'dt_article_goods', 'column', 'sell_price'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ѻ���',
   'user', @CurrentUser, 'table', 'dt_article_goods', 'column', 'point'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�����',
   'user', @CurrentUser, 'table', 'dt_article_goods', 'column', 'is_msg'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ��ö�',
   'user', @CurrentUser, 'table', 'dt_article_goods', 'column', 'is_top'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ��Ƽ�',
   'user', @CurrentUser, 'table', 'dt_article_goods', 'column', 'is_red'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�����',
   'user', @CurrentUser, 'table', 'dt_article_goods', 'column', 'is_hot'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�õ�Ƭ',
   'user', @CurrentUser, 'table', 'dt_article_goods', 'column', 'is_slide'
go

/*==============================================================*/
/* Table: dt_article_news                                       */
/*==============================================================*/
create table dt_article_news (
   id                   int                  null,
   author               nvarchar(100)        null default '',
   "from"               nvarchar(50)         null default '',
   zhaiyao              nvarchar(255)        null default '',
   is_msg               tinyint              null default 0,
   is_top               tinyint              null default 0,
   is_red               tinyint              null default 0,
   is_hot               tinyint              null default 0,
   is_slide             tinyint              null default 0
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_article_news', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_article_news', 'column', 'author'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Դ',
   'user', @CurrentUser, 'table', 'dt_article_news', 'column', 'from'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ժҪ',
   'user', @CurrentUser, 'table', 'dt_article_news', 'column', 'zhaiyao'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�����',
   'user', @CurrentUser, 'table', 'dt_article_news', 'column', 'is_msg'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ��ö�',
   'user', @CurrentUser, 'table', 'dt_article_news', 'column', 'is_top'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ��Ƽ�',
   'user', @CurrentUser, 'table', 'dt_article_news', 'column', 'is_red'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�����',
   'user', @CurrentUser, 'table', 'dt_article_news', 'column', 'is_hot'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�õ�Ƭ',
   'user', @CurrentUser, 'table', 'dt_article_news', 'column', 'is_slide'
go

/*==============================================================*/
/* Table: dt_attribute_value                                    */
/*==============================================================*/
create table dt_attribute_value (
   id                   int                  identity,
   article_id           int                  null,
   attribute_id         int                  null,
   title                nvarchar(100)        null,
   content              ntext                null,
   constraint PK_DT_ATTRIBUTE_VALUE primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_attribute_value', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_attribute_value', 'column', 'article_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_attribute_value', 'column', 'attribute_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_attribute_value', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_attribute_value', 'column', 'content'
go

/*==============================================================*/
/* Table: dt_attributes                                         */
/*==============================================================*/
create table dt_attributes (
   id                   int                  identity,
   channel_id           int                  null,
   title                nvarchar(100)        null,
   remark               nvarchar(500)        null,
   type                 int                  null,
   default_value        nvarchar(500)        null,
   sort_id              int                  null default 99,
   add_time             datetime             null default getdate(),
   constraint PK_DT_ATTRIBUTES primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_attributes', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ƶ��ID',
   'user', @CurrentUser, 'table', 'dt_attributes', 'column', 'channel_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_attributes', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', @CurrentUser, 'table', 'dt_attributes', 'column', 'remark'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ʾ����0�����1������2��ѡ��3��ѡ��',
   'user', @CurrentUser, 'table', 'dt_attributes', 'column', 'type'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ĭ��ֵ',
   'user', @CurrentUser, 'table', 'dt_attributes', 'column', 'default_value'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_attributes', 'column', 'sort_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ʱ��',
   'user', @CurrentUser, 'table', 'dt_attributes', 'column', 'add_time'
go

/*==============================================================*/
/* Table: dt_category                                           */
/*==============================================================*/
create table dt_category (
   id                   int                  identity,
   channel_id           int                  not null,
   title                nvarchar(100)        null,
   call_index           nvarchar(50)         null default '',
   parent_id            int                  null default 0,
   class_list           nvarchar(500)        null,
   class_layer          int                  null default 0,
   sort_id              int                  null default 99,
   link_url             nvarchar(255)        null default '',
   img_url              nvarchar(255)        null default '',
   content              ntext                null,
   seo_title            nvarchar(255)        null default '',
   seo_keywords         nvarchar(255)        null default '',
   seo_description      nvarchar(255)        null default '',
   constraint PK_DT_CATEGORY primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ƶ��ID',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'channel_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ñ���',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'call_index'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�����ID',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'parent_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ID�б�(���ŷָ���)',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'class_list'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'class_layer'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'sort_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'URL��ת��ַ',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'link_url'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ͼƬ��ַ',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'img_url'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע˵��',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'content'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'SEO����',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'seo_title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'SEO�ؽ���',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'seo_keywords'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'SEO����',
   'user', @CurrentUser, 'table', 'dt_category', 'column', 'seo_description'
go

/*==============================================================*/
/* Table: dt_distribution                                       */
/*==============================================================*/
create table dt_distribution (
   id                   int                  identity,
   title                nvarchar(100)        null,
   remark               ntext                null,
   type                 tinyint              null default 0,
   amount               decimal(9,2)         null default 0,
   sort_id              int                  null default 99,
   is_lock              tinyint              null default 0,
   constraint PK_DT_DISTRIBUTION primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_distribution', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_distribution', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע˵��',
   'user', @CurrentUser, 'table', 'dt_distribution', 'column', 'remark'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ʽ0�ȿ���1�Ȼ����',
   'user', @CurrentUser, 'table', 'dt_distribution', 'column', 'type'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ͷ���',
   'user', @CurrentUser, 'table', 'dt_distribution', 'column', 'amount'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_distribution', 'column', 'sort_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ���ʾ',
   'user', @CurrentUser, 'table', 'dt_distribution', 'column', 'is_lock'
go

/*==============================================================*/
/* Table: dt_download_attach                                    */
/*==============================================================*/
create table dt_download_attach (
   id                   int                  identity,
   article_id           int                  null,
   title                nvarchar(255)        null,
   file_path            nvarchar(255)        null default '',
   file_ext             nvarchar(100)        null default '',
   file_size            int                  null default 0,
   down_num             int                  null default 0,
   point                int                  null default 0,
   constraint PK_DT_DOWNLOAD_ATTACH primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_download_attach', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_download_attach', 'column', 'article_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_download_attach', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ļ�·��',
   'user', @CurrentUser, 'table', 'dt_download_attach', 'column', 'file_path'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ļ���չ��',
   'user', @CurrentUser, 'table', 'dt_download_attach', 'column', 'file_ext'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ļ���С',
   'user', @CurrentUser, 'table', 'dt_download_attach', 'column', 'file_size'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ش���',
   'user', @CurrentUser, 'table', 'dt_download_attach', 'column', 'down_num'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�����������',
   'user', @CurrentUser, 'table', 'dt_download_attach', 'column', 'point'
go

/*==============================================================*/
/* Table: dt_goods_group_price                                  */
/*==============================================================*/
create table dt_goods_group_price (
   id                   int                  identity,
   article_id           int                  null,
   group_id             int                  null default 0,
   price                decimal(9,2)         null default 0,
   constraint PK_DT_GOODS_GROUP_PRICE primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_goods_group_price', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_goods_group_price', 'column', 'article_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û���ID',
   'user', @CurrentUser, 'table', 'dt_goods_group_price', 'column', 'group_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�۸�',
   'user', @CurrentUser, 'table', 'dt_goods_group_price', 'column', 'price'
go

/*==============================================================*/
/* Table: dt_mail_template                                      */
/*==============================================================*/
create table dt_mail_template (
   id                   int                  identity,
   title                nvarchar(100)        null,
   call_index           nvarchar(50)         null,
   maill_title          nvarchar(100)        null,
   content              ntext                null,
   is_sys               tinyint              null default 0,
   constraint PK_DT_MAIL_TEMPLATE primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ʼ�ģ��',
   'user', @CurrentUser, 'table', 'dt_mail_template'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_mail_template', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_mail_template', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ñ���',
   'user', @CurrentUser, 'table', 'dt_mail_template', 'column', 'call_index'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ʼ�����',
   'user', @CurrentUser, 'table', 'dt_mail_template', 'column', 'maill_title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ʼ�����',
   'user', @CurrentUser, 'table', 'dt_mail_template', 'column', 'content'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ϵͳĬ��',
   'user', @CurrentUser, 'table', 'dt_mail_template', 'column', 'is_sys'
go

/*==============================================================*/
/* Table: dt_manager                                            */
/*==============================================================*/
create table dt_manager (
   id                   int                  identity,
   role_id              int                  not null,
   role_type            int                  null default 2,
   user_name            nvarchar(100)        null,
   user_pwd             nvarchar(100)        null,
   real_name            nvarchar(50)         null default '',
   telephone            nvarchar(30)         null default '',
   email                nvarchar(30)         null default '',
   is_lock              int                  null default 0,
   add_time             datetime             null default getdate(),
   constraint PK_DT_MANAGER primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_manager', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ɫID',
   'user', @CurrentUser, 'table', 'dt_manager', 'column', 'role_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����Ա����1����2ϵ��',
   'user', @CurrentUser, 'table', 'dt_manager', 'column', 'role_type'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û���',
   'user', @CurrentUser, 'table', 'dt_manager', 'column', 'user_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��¼����',
   'user', @CurrentUser, 'table', 'dt_manager', 'column', 'user_pwd'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û��ǳ�',
   'user', @CurrentUser, 'table', 'dt_manager', 'column', 'real_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ϵ�绰',
   'user', @CurrentUser, 'table', 'dt_manager', 'column', 'telephone'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_manager', 'column', 'email'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�����',
   'user', @CurrentUser, 'table', 'dt_manager', 'column', 'is_lock'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ʱ��',
   'user', @CurrentUser, 'table', 'dt_manager', 'column', 'add_time'
go

/*==============================================================*/
/* Table: dt_manager_log                                        */
/*==============================================================*/
create table dt_manager_log (
   id                   int                  identity,
   user_id              int                  null,
   user_name            nvarchar(100)        null,
   action_type          nvarchar(100)        null,
   note                 nvarchar(255)        null,
   login_ip             nvarchar(30)         null,
   login_time           datetime             null default getdate(),
   constraint PK_DT_MANAGER_LOG primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_manager_log', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�ID',
   'user', @CurrentUser, 'table', 'dt_manager_log', 'column', 'user_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û���',
   'user', @CurrentUser, 'table', 'dt_manager_log', 'column', 'user_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_manager_log', 'column', 'action_type'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע',
   'user', @CurrentUser, 'table', 'dt_manager_log', 'column', 'note'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��¼IP',
   'user', @CurrentUser, 'table', 'dt_manager_log', 'column', 'login_ip'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��¼ʱ��',
   'user', @CurrentUser, 'table', 'dt_manager_log', 'column', 'login_time'
go

/*==============================================================*/
/* Table: dt_manager_role                                       */
/*==============================================================*/
create table dt_manager_role (
   id                   int                  identity,
   role_name            nvarchar(100)        null,
   role_type            tinyint              null,
   constraint PK_DT_MANAGER_ROLE primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_manager_role', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ɫ����',
   'user', @CurrentUser, 'table', 'dt_manager_role', 'column', 'role_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ɫ����',
   'user', @CurrentUser, 'table', 'dt_manager_role', 'column', 'role_type'
go

/*==============================================================*/
/* Table: dt_manager_role_value                                 */
/*==============================================================*/
create table dt_manager_role_value (
   id                   int                  identity,
   role_id              int                  null,
   channel_name         nvarchar(255)        null,
   channel_id           int                  null,
   action_type          nvarchar(100)        null,
   constraint PK_DT_MANAGER_ROLE_VALUE primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_manager_role_value', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ɫID',
   'user', @CurrentUser, 'table', 'dt_manager_role_value', 'column', 'role_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ƶ������',
   'user', @CurrentUser, 'table', 'dt_manager_role_value', 'column', 'channel_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ƶ��ID',
   'user', @CurrentUser, 'table', 'dt_manager_role_value', 'column', 'channel_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_manager_role_value', 'column', 'action_type'
go

/*==============================================================*/
/* Table: dt_order_goods                                        */
/*==============================================================*/
create table dt_order_goods (
   id                   int                  identity,
   order_id             int                  null,
   goods_id             int                  null,
   goods_name           nvarchar(100)        null,
   goods_price          decimal(9,2)         null default 0,
   real_price           decimal(9,2)         null default 0,
   quantity             int                  null default 0,
   point                int                  null default 0,
   constraint PK_DT_ORDER_GOODS primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_order_goods', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_order_goods', 'column', 'order_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ƷID',
   'user', @CurrentUser, 'table', 'dt_order_goods', 'column', 'goods_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ʒ����',
   'user', @CurrentUser, 'table', 'dt_order_goods', 'column', 'goods_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ʒ�۸�',
   'user', @CurrentUser, 'table', 'dt_order_goods', 'column', 'goods_price'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʵ�ʼ۸�',
   'user', @CurrentUser, 'table', 'dt_order_goods', 'column', 'real_price'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_order_goods', 'column', 'quantity'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�������',
   'user', @CurrentUser, 'table', 'dt_order_goods', 'column', 'point'
go

/*==============================================================*/
/* Table: dt_orders                                             */
/*==============================================================*/
create table dt_orders (
   id                   int                  identity,
   order_no             nvarchar(100)        null,
   user_id              int                  null default 0,
   user_name            nvarchar(100)        null,
   payment_id           int                  null,
   distribution_id      int                  null,
   status               tinyint              null default 1,
   payment_status       tinyint              null default 0,
   distribution_status  tinyint              null,
   delivery_name        nvarchar(100)        null default '',
   delivery_no          nvarchar(100)        null default '',
   accept_name          nvarchar(50)         null,
   post_code            nvarchar(20)         null default '',
   telphone             nvarchar(30)         null,
   mobile               nvarchar(30)         null,
   address              nvarchar(255)        null,
   message              nvarchar(500)        null,
   payable_amount       decimal(9,2)         null,
   real_amount          decimal(9,2)         null,
   payable_freight      decimal(9,2)         null,
   real_freight         decimal(9,2)         null,
   payment_fee          decimal(9,2)         null,
   order_amount         decimal(9,2)         null default 0,
   point                int                  null,
   add_time             datetime             null,
   payment_time         datetime             null,
   confirm_time         datetime             null,
   distribution_time    datetime             null,
   complete_time        datetime             null,
   constraint PK_DT_ORDERS primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'order_no'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�ID',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'user_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û���',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'user_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '֧����ʽ',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'payment_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ͷ�ʽ',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'distribution_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����״̬1���ɶ���,2ȷ�϶���,3��ɶ���,4ȡ������,5���϶���',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'status'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '֧��״̬1δ֧��,2��֧��',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'payment_status'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����״̬1δ����2�ѷ���',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'distribution_status'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�������',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'delivery_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ݵ���',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'delivery_no'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ջ�������',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'accept_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'post_code'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ϵ�绰',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'telphone'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ֻ�',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'mobile'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ջ���ַ',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'address'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'message'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ӧ����Ʒ�ܽ��',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'payable_amount'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʵ����Ʒ�ܽ��',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'real_amount'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ӧ���˷�',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'payable_freight'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʵ���˷�',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'real_freight'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '֧��������',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'payment_fee'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�����ܽ��',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'order_amount'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��õĻ���',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'point'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�µ�ʱ��',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'add_time'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '֧��ʱ��',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'payment_time'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ȷ��ʱ��',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'confirm_time'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'distribution_time'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�������ʱ��',
   'user', @CurrentUser, 'table', 'dt_orders', 'column', 'complete_time'
go

/*==============================================================*/
/* Table: dt_payment                                            */
/*==============================================================*/
create table dt_payment (
   id                   int                  identity,
   title                nvarchar(100)        null,
   img_url              nvarchar(255)        null default '',
   remark               nvarchar(500)        null,
   type                 tinyint              null default 1,
   poundage_type        tinyint              null default 1,
   poundage_amount      decimal(9,2)         null,
   sort_id              int                  null default 99,
   is_lock              tinyint              null default 0,
   api_path             nvarchar(100)        null,
   constraint PK_DT_PAYMENT primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_payment', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '֧������',
   'user', @CurrentUser, 'table', 'dt_payment', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ʾͼƬ',
   'user', @CurrentUser, 'table', 'dt_payment', 'column', 'img_url'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע˵��',
   'user', @CurrentUser, 'table', 'dt_payment', 'column', 'remark'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '֧������1����2����',
   'user', @CurrentUser, 'table', 'dt_payment', 'column', 'type'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����������1�ٷֱ�2�̶����',
   'user', @CurrentUser, 'table', 'dt_payment', 'column', 'poundage_type'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�����ѽ��',
   'user', @CurrentUser, 'table', 'dt_payment', 'column', 'poundage_amount'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_payment', 'column', 'sort_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�����',
   'user', @CurrentUser, 'table', 'dt_payment', 'column', 'is_lock'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'APIĿ¼����',
   'user', @CurrentUser, 'table', 'dt_payment', 'column', 'api_path'
go

/*==============================================================*/
/* Table: dt_point_log                                          */
/*==============================================================*/
create table dt_point_log (
   id                   int                  identity,
   user_id              int                  null,
   user_name            nvarchar(100)        null,
   value                int                  null,
   remark               nvarchar(500)        null,
   add_time             datetime             null default getdate(),
   constraint PK_DT_POINT_LOG primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_point_log', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�ID',
   'user', @CurrentUser, 'table', 'dt_point_log', 'column', 'user_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û���',
   'user', @CurrentUser, 'table', 'dt_point_log', 'column', 'user_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_point_log', 'column', 'value'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע˵��',
   'user', @CurrentUser, 'table', 'dt_point_log', 'column', 'remark'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʱ��',
   'user', @CurrentUser, 'table', 'dt_point_log', 'column', 'add_time'
go

/*==============================================================*/
/* Table: dt_sys_channel                                        */
/*==============================================================*/
create table dt_sys_channel (
   id                   int                  identity,
   model_id             int                  null default 0,
   name                 nvarchar(100)        null,
   title                nvarchar(100)        null,
   sort_id              int                  null default 99,
   constraint PK_DT_SYS_CHANNEL primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_sys_channel', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ģ��ID',
   'user', @CurrentUser, 'table', 'dt_sys_channel', 'column', 'model_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ƶ������',
   'user', @CurrentUser, 'table', 'dt_sys_channel', 'column', 'name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ƶ������',
   'user', @CurrentUser, 'table', 'dt_sys_channel', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_sys_channel', 'column', 'sort_id'
go

/*==============================================================*/
/* Table: dt_sys_model                                          */
/*==============================================================*/
create table dt_sys_model (
   id                   int                  identity,
   title                nvarchar(100)        null,
   sort_id              int                  null,
   inherit_index        nvarchar(255)        null default '',
   inherit_list         nvarchar(255)        null default '',
   inherit_detail       nvarchar(255)        null default '',
   is_sys               tinyint              null default 0,
   constraint PK_DT_SYS_MODEL primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_sys_model', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_sys_model', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_sys_model', 'column', 'sort_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ҳ����',
   'user', @CurrentUser, 'table', 'dt_sys_model', 'column', 'inherit_index'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�б�ҳ����',
   'user', @CurrentUser, 'table', 'dt_sys_model', 'column', 'inherit_list'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ϸҳ����',
   'user', @CurrentUser, 'table', 'dt_sys_model', 'column', 'inherit_detail'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�ϵͳ����',
   'user', @CurrentUser, 'table', 'dt_sys_model', 'column', 'is_sys'
go

/*==============================================================*/
/* Table: dt_sys_model_nav                                      */
/*==============================================================*/
create table dt_sys_model_nav (
   id                   int                  identity,
   model_id             int                  null default 0,
   title                nvarchar(100)        null,
   nav_url              nvarchar(255)        null default '',
   sort_id              int                  null default 99,
   constraint PK_DT_SYS_MODEL_NAV primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_sys_model_nav', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ģ��ID',
   'user', @CurrentUser, 'table', 'dt_sys_model_nav', 'column', 'model_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_sys_model_nav', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ļ�·��',
   'user', @CurrentUser, 'table', 'dt_sys_model_nav', 'column', 'nav_url'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_sys_model_nav', 'column', 'sort_id'
go

/*==============================================================*/
/* Table: dt_user_code                                          */
/*==============================================================*/
create table dt_user_code (
   id                   int                  identity,
   user_id              int                  not null,
   user_name            nvarchar(100)        null,
   type                 nvarchar(20)         null,
   str_code             nvarchar(255)        null,
   count                int                  null default 0,
   status               tinyint              null default 0,
   eff_time             datetime             not null,
   add_time             datetime             not null default getdate(),
   constraint PK_DT_USER_CODE primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_user_code', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�ID',
   'user', @CurrentUser, 'table', 'dt_user_code', 'column', 'user_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û���',
   'user', @CurrentUser, 'table', 'dt_user_code', 'column', 'user_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������� passwordȡ������,register����ע��',
   'user', @CurrentUser, 'table', 'dt_user_code', 'column', 'type'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '���ɵ��ַ���',
   'user', @CurrentUser, 'table', 'dt_user_code', 'column', 'str_code'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ʹ�ô���',
   'user', @CurrentUser, 'table', 'dt_user_code', 'column', 'count'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '״̬0δʹ��1��ʹ��',
   'user', @CurrentUser, 'table', 'dt_user_code', 'column', 'status'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Чʱ��',
   'user', @CurrentUser, 'table', 'dt_user_code', 'column', 'eff_time'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'dt_user_code', 'column', 'add_time'
go

/*==============================================================*/
/* Table: dt_user_groups                                        */
/*==============================================================*/
create table dt_user_groups (
   id                   int                  identity,
   title                nvarchar(100)        null default '',
   grade                int                  null default 0,
   upgrade_exp          int                  null default 0,
   amount               decimal(9,2)         null default 0,
   point                int                  null default 0,
   discount             int                  null,
   is_default           tinyint              null default 0,
   is_upgrade           tinyint              null default 1,
   is_lock              tinyint              null default 0,
   constraint PK_DT_USER_GROUPS primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û���',
   'user', @CurrentUser, 'table', 'dt_user_groups'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_user_groups', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�������',
   'user', @CurrentUser, 'table', 'dt_user_groups', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ա�ȼ�ֵ',
   'user', @CurrentUser, 'table', 'dt_user_groups', 'column', 'grade'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������ֵ',
   'user', @CurrentUser, 'table', 'dt_user_groups', 'column', 'upgrade_exp'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ĭ��Ԥ���',
   'user', @CurrentUser, 'table', 'dt_user_groups', 'column', 'amount'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ĭ�ϻ���',
   'user', @CurrentUser, 'table', 'dt_user_groups', 'column', 'point'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�����ۿ�',
   'user', @CurrentUser, 'table', 'dt_user_groups', 'column', 'discount'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�ע���û���',
   'user', @CurrentUser, 'table', 'dt_user_groups', 'column', 'is_default'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ��Զ�����',
   'user', @CurrentUser, 'table', 'dt_user_groups', 'column', 'is_upgrade'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ���ʾ',
   'user', @CurrentUser, 'table', 'dt_user_groups', 'column', 'is_lock'
go

/*==============================================================*/
/* Table: dt_user_login_log                                     */
/*==============================================================*/
create table dt_user_login_log (
   id                   int                  identity,
   user_id              int                  not null,
   user_name            nvarchar(100)        null default '',
   remark               nvarchar(255)        null default '',
   login_time           datetime             null default getdate(),
   login_ip             nvarchar(50)         null default '',
   constraint PK_DT_USER_LOGIN_LOG primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_user_login_log', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�ID',
   'user', @CurrentUser, 'table', 'dt_user_login_log', 'column', 'user_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û���',
   'user', @CurrentUser, 'table', 'dt_user_login_log', 'column', 'user_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ע˵��',
   'user', @CurrentUser, 'table', 'dt_user_login_log', 'column', 'remark'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��¼ʱ��',
   'user', @CurrentUser, 'table', 'dt_user_login_log', 'column', 'login_time'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��¼IP',
   'user', @CurrentUser, 'table', 'dt_user_login_log', 'column', 'login_ip'
go

/*==============================================================*/
/* Table: dt_user_message                                       */
/*==============================================================*/
create table dt_user_message (
   id                   int                  identity,
   type                 tinyint              null default 1,
   post_user_name       nvarchar(100)        null,
   accept_user_name     nvarchar(100)        null,
   is_read              tinyint              null default 0,
   title                nvarchar(100)        null,
   content              ntext                null,
   post_time            datetime             not null default getdate(),
   read_time            datetime             null,
   constraint PK_DT_USER_MESSAGE primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_user_message', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����Ϣ����0ϵͳ��Ϣ1�ռ���2������',
   'user', @CurrentUser, 'table', 'dt_user_message', 'column', 'type'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '������',
   'user', @CurrentUser, 'table', 'dt_user_message', 'column', 'post_user_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ռ���',
   'user', @CurrentUser, 'table', 'dt_user_message', 'column', 'accept_user_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�鿴0δ��1����',
   'user', @CurrentUser, 'table', 'dt_user_message', 'column', 'is_read'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����Ϣ����',
   'user', @CurrentUser, 'table', 'dt_user_message', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����Ϣ����',
   'user', @CurrentUser, 'table', 'dt_user_message', 'column', 'content'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ʱ��',
   'user', @CurrentUser, 'table', 'dt_user_message', 'column', 'post_time'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ķ�ʱ��',
   'user', @CurrentUser, 'table', 'dt_user_message', 'column', 'read_time'
go

/*==============================================================*/
/* Table: dt_users                                              */
/*==============================================================*/
create table dt_users (
   id                   int                  identity,
   group_id             int                  not null default 0,
   user_name            nvarchar(100)        not null,
   password             nvarchar(100)        not null,
   email                nvarchar(50)         null default '',
   nick_name            nvarchar(100)        null default '',
   avatar               nvarchar(255)        null default '',
   sex                  nvarchar(20)         null default '����',
   birthday             datetime             null,
   telphone             nvarchar(50)         null default '',
   mobile               nvarchar(20)         null default '',
   qq                   nvarchar(30)         null default '',
   address              nvarchar(255)        null,
   safe_question        nvarchar(255)        null default '',
   safe_answer          nvarchar(255)        null default '',
   amount               decimal(9,2)         null default 0,
   point                int                  null default 0,
   exp                  int                  null default 0,
   is_lock              tinyint              null default 0,
   reg_time             datetime             null default getdate(),
   reg_ip               nvarchar(30)         null,
   constraint PK_DT_USERS primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û����',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'group_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û���',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'user_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�����',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'password'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'email'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û��ǳ�',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'nick_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�ͷ��',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'avatar'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û��Ա�',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'sex'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'birthday'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ϵ�绰',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'telphone'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ֻ�����',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'mobile'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'QQ����',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'qq'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ϵ��ַ',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'address'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ȫ����',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'safe_question'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�����',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'safe_answer'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Ԥ���',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'amount'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�����',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'point'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ֵ',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'exp'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�״̬,0����,1����֤,2�����,3����',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'is_lock'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ע��ʱ��',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'reg_time'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'ע��IP',
   'user', @CurrentUser, 'table', 'dt_users', 'column', 'reg_ip'
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_app_oauth')
            and   type = 'U')
   drop table dt_app_oauth
go

/*==============================================================*/
/* Table: dt_app_oauth                                          */
/*==============================================================*/
create table dt_app_oauth (
   id                   int                  identity,
   title                nvarchar(100)        null default '',
   img_url              nvarchar(255)        null default '',
   app_id               nvarchar(100)        null,
   app_key              nvarchar(500)        null,
   remark               nvarchar(500)        null default '',
   sort_id              int                  null default 99,
   is_lock              tinyint              null default 0,
   api_path             nvarchar(255)        null default '',
   constraint PK_DT_APP_OAUTH primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_app_oauth', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_app_oauth', 'column', 'title'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��ʾͼƬ',
   'user', @CurrentUser, 'table', 'dt_app_oauth', 'column', 'img_url'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'AppId',
   'user', @CurrentUser, 'table', 'dt_app_oauth', 'column', 'app_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'AppKey',
   'user', @CurrentUser, 'table', 'dt_app_oauth', 'column', 'app_key'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����',
   'user', @CurrentUser, 'table', 'dt_app_oauth', 'column', 'remark'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��������',
   'user', @CurrentUser, 'table', 'dt_app_oauth', 'column', 'sort_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�Ƿ�����',
   'user', @CurrentUser, 'table', 'dt_app_oauth', 'column', 'is_lock'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�ӿ�Ŀ¼',
   'user', @CurrentUser, 'table', 'dt_app_oauth', 'column', 'api_path'
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dt_user_oauth')
            and   type = 'U')
   drop table dt_user_oauth
go

/*==============================================================*/
/* Table: dt_user_oauth                                         */
/*==============================================================*/
create table dt_user_oauth (
   id                   int                  identity,
   user_id              int                  null,
   user_name            nvarchar(100)        null,
   oauth_name           nvarchar(50)         not null default '0',
   oauth_access_token   nvarchar(500)        null,
   oauth_openid         nvarchar(255)        null,
   add_time             datetime             null default getdate(),
   constraint PK_DT_USER_OAUTH primary key (id)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ID',
   'user', @CurrentUser, 'table', 'dt_user_oauth', 'column', 'id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û�ID',
   'user', @CurrentUser, 'table', 'dt_user_oauth', 'column', 'user_id'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '�û���',
   'user', @CurrentUser, 'table', 'dt_user_oauth', 'column', 'user_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '����ƽ̨����',
   'user', @CurrentUser, 'table', 'dt_user_oauth', 'column', 'oauth_name'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'access_token',
   'user', @CurrentUser, 'table', 'dt_user_oauth', 'column', 'oauth_access_token'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ȩkey',
   'user', @CurrentUser, 'table', 'dt_user_oauth', 'column', 'oauth_openid'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '��Ȩʱ��',
   'user', @CurrentUser, 'table', 'dt_user_oauth', 'column', 'add_time'
go


/*==============================================================*/
/* View: view_article_content                                   */
/*==============================================================*/
create view view_article_content as
SELECT     dbo.dt_article.*, dbo.dt_article_content.call_index, dbo.dt_article_content.is_msg, 
                      dbo.dt_article_content.is_red, dbo.dt_article_diggs.digg_good, dbo.dt_article_diggs.digg_bad
FROM         dbo.dt_article INNER JOIN
                      dbo.dt_article_content ON dbo.dt_article.id = dbo.dt_article_content.id INNER JOIN
                      dbo.dt_article_diggs ON dbo.dt_article.id = dbo.dt_article_diggs.id
go

/*==============================================================*/
/* View: view_article_download                                  */
/*==============================================================*/
create view view_article_download as
SELECT     dbo.dt_article.*, dbo.dt_article_download.is_msg, dbo.dt_article_download.is_red, dbo.dt_article_diggs.digg_good, 
                      dbo.dt_article_diggs.digg_bad
FROM         dbo.dt_article INNER JOIN
                      dbo.dt_article_download ON dbo.dt_article.id = dbo.dt_article_download.id INNER JOIN
                      dbo.dt_article_diggs ON dbo.dt_article.id = dbo.dt_article_diggs.id
go

/*==============================================================*/
/* View: view_article_goods                                     */
/*==============================================================*/
create view view_article_goods as
SELECT     dbo.dt_article.*,dbo.dt_article_goods.goods_no, dbo.dt_article_goods.stock_quantity, dbo.dt_article_goods.market_price, dbo.dt_article_goods.sell_price, 
                      dbo.dt_article_goods.point, dbo.dt_article_goods.is_msg, dbo.dt_article_goods.is_top, dbo.dt_article_goods.is_red, dbo.dt_article_goods.is_hot, 
                      dbo.dt_article_goods.is_slide, dbo.dt_article_diggs.digg_good, dbo.dt_article_diggs.digg_bad
FROM         dbo.dt_article INNER JOIN
                      dbo.dt_article_diggs ON dbo.dt_article.id = dbo.dt_article_diggs.id INNER JOIN
                      dbo.dt_article_goods ON dbo.dt_article.id = dbo.dt_article_goods.id
go

/*==============================================================*/
/* View: view_article_news                                      */
/*==============================================================*/
create view view_article_news as
SELECT     dbo.dt_article.*, dbo.dt_article_news.author, dbo.dt_article_news.[from], dbo.dt_article_news.zhaiyao, dbo.dt_article_news.is_msg, 
                      dbo.dt_article_news.is_top, dbo.dt_article_news.is_red, dbo.dt_article_news.is_hot, dbo.dt_article_news.is_slide, dbo.dt_article_diggs.digg_good, 
                      dbo.dt_article_diggs.digg_bad
FROM         dbo.dt_article INNER JOIN
                      dbo.dt_article_news ON dbo.dt_article.id = dbo.dt_article_news.id INNER JOIN
                      dbo.dt_article_diggs ON dbo.dt_article.id = dbo.dt_article_diggs.id
go

/*==============================================================*/
/* View: view_sys_channel                                       */
/*==============================================================*/
create view view_sys_channel as
SELECT     dt_sys_model.title AS model_title, dt_sys_channel.id, dt_sys_channel.model_id, dt_sys_channel.title, dt_sys_channel.sort_id, 
                      dt_sys_channel.name
FROM         dt_sys_channel INNER JOIN
                      dt_sys_model ON dt_sys_channel.model_id = dt_sys_model.id
go

alter table dt_article_albums
   add constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_ALBUMS foreign key (article_id)
      references dt_article (id)
go

alter table dt_article_comment
   add constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_COMMENT foreign key (article_id)
      references dt_article (id)
go

alter table dt_article_content
   add constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_CONTENT foreign key (id)
      references dt_article (id)
go

alter table dt_article_diggs
   add constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_DIGGS foreign key (id)
      references dt_article (id)
go

alter table dt_article_download
   add constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_DOWNLOAD foreign key (id)
      references dt_article (id)
go

alter table dt_article_goods
   add constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_GOODS foreign key (id)
      references dt_article (id)
go

alter table dt_article_news
   add constraint FK_DT_ARTIC_REFERENCE_DT_ARTIC_NEWS foreign key (id)
      references dt_article (id)
go

alter table dt_attribute_value
   add constraint FK_DT_ATTRI_REFERENCE_DT_ARTIC_VALUE foreign key (article_id)
      references dt_article (id)
go

alter table dt_attribute_value
   add constraint FK_DT_ATTRI_REFERENCE_DT_ATTRI_ATTR foreign key (attribute_id)
      references dt_attributes (id)
go

alter table dt_download_attach
   add constraint FK_DT_DOWNL_REFERENCE_DT_ARTIC_ATTACH foreign key (article_id)
      references dt_article (id)
go

alter table dt_goods_group_price
   add constraint FK_DT_GOODS_REFERENCE_DT_ARTIC_PRICE foreign key (article_id)
      references dt_article (id)
go

alter table dt_manager
   add constraint FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE foreign key (role_id)
      references dt_manager_role (id)
go

alter table dt_manager_role_value
   add constraint FK_DT_MANAG_REFERENCE_DT_MANAG foreign key (role_id)
      references dt_manager_role (id)
go

alter table dt_order_goods
   add constraint FK_DT_ORDER_REFERENCE_DT_ORDER foreign key (order_id)
      references dt_orders (id)
go

alter table dt_sys_channel
   add constraint FK_DT_SYS_C_REFERENCE_DT_SYS_M foreign key (model_id)
      references dt_sys_model (id)
go

alter table dt_sys_model_nav
   add constraint FK_DT_SYS_M_REFERENCE_DT_SYS_M foreign key (model_id)
      references dt_sys_model (id)
go

alter table dt_user_code
   add constraint FK_DT_USER__REFERENCE_DT_USERS_CODE foreign key (user_id)
      references dt_users (id)
go

alter table dt_user_login_log
   add constraint FK_DT_USER__REFERENCE_DT_USERS_LOG foreign key (user_id)
      references dt_users (id)
go

alter table dt_users
   add constraint FK_DT_USERS_REFERENCE_DT_USER_ foreign key (group_id)
      references dt_user_groups (id)
go

if exists (select 1 from  sysobjects
           where  id = object_id('dt_link') and   type = 'U')
   drop table dt_link
go
create table dt_link(
	[id] [int] IDENTITY(1,1) PRIMARY KEY,
	[title] [nvarchar](255),
	[user_name] [nvarchar](50),
	[user_tel] [nvarchar](20),
	[email] [nvarchar](50),
	[site_url] [nvarchar](255),
	[img_url] [nvarchar](255),
	[is_image] [int] NOT NULL DEFAULT ((0)),
	[sort_id] [int] NOT NULL DEFAULT ((99)),
	[is_red] [tinyint] NOT NULL DEFAULT ((0)),
	[is_lock] [tinyint] NOT NULL,
	[add_time] [datetime] NULL DEFAULT (getdate())
)

go

if exists (select 1 from  sysobjects
           where  id = object_id('dt_feedback') and   type = 'U')
   drop table dt_feedback
go
create table dt_feedback(
	[id] [int] IDENTITY(1,1) PRIMARY KEY,
	[title] [nvarchar](100),
	[content] [ntext],
	[user_name] [nvarchar](50),
	[user_tel] [nvarchar](30),
	[user_qq] [nvarchar](30),
	[user_email] [nvarchar](100),
	[add_time] [datetime] NOT NULL DEFAULT (getdate()),
	[reply_content] [ntext] DEFAULT (''),
	[reply_time] [datetime],
	[is_lock] [tinyint] NOT NULL DEFAULT ((0))
)

go

/*===================================*/
/* ��ʼ��Ĭ������                    */
/*===================================*/
INSERT INTO [dt_manager_role]
           ([role_name],[role_type])
     VALUES
           ('��������Ա',1)
GO
INSERT INTO [dt_manager]
           ([role_id],[role_type],[user_name],[user_pwd]
           ,[real_name],[telephone],[email])
     VALUES
           (1,1,'admin','8B0ED1C54416ADF8E6E0E3794AF0900D'
           ,'ϵͳ����Ա','13800138000','info@it134.cn')
GO
INSERT INTO [dt_sys_model]
           ([title],[sort_id],[inherit_index]
           ,[inherit_list],[inherit_detail],[is_sys])
     VALUES
           ('����ģ��',99,'DTcms.Web.UI.Page.news'
           ,'DTcms.Web.UI.Page.news_list','DTcms.Web.UI.Page.news_show',1)
GO
INSERT INTO [dt_sys_model]
           ([title],[sort_id],[inherit_index]
           ,[inherit_list],[inherit_detail],[is_sys])
     VALUES
           ('��Ʒģ��',100,'DTcms.Web.UI.Page.goods'
           ,'DTcms.Web.UI.Page.goods_list','DTcms.Web.UI.Page.goods_show',1)
GO
INSERT INTO [dt_sys_model]
           ([title],[sort_id],[inherit_index]
           ,[inherit_list],[inherit_detail],[is_sys])
     VALUES
           ('����ģ��',101,'DTcms.Web.UI.Page.download'
           ,'DTcms.Web.UI.Page.download_list','DTcms.Web.UI.Page.download_show',1)
GO
INSERT INTO [dt_sys_model]
           ([title],[sort_id],[inherit_index]
           ,[inherit_list],[inherit_detail],[is_sys])
     VALUES
           ('����ģ��',102,'DTcms.Web.UI.Page.content'
           ,'DTcms.Web.UI.Page.content_list','DTcms.Web.UI.Page.content_show',1)
GO
INSERT INTO [dt_sys_model_nav]
           ([model_id],[title],[nav_url],[sort_id])
     VALUES
           (1,'���ݹ���','article/list.aspx',99)
GO
INSERT INTO [dt_sys_model_nav]
           ([model_id],[title],[nav_url],[sort_id])
     VALUES
           (1,'��Ŀ���','category/list.aspx',100)
GO
INSERT INTO [dt_sys_model_nav]
           ([model_id],[title],[nav_url],[sort_id])
     VALUES
           (1,'��չ����','attribute/list.aspx',101)
GO
INSERT INTO [dt_sys_model_nav]
           ([model_id],[title],[nav_url],[sort_id])
     VALUES
           (2,'���ݹ���','goods/list.aspx',99)
GO
INSERT INTO [dt_sys_model_nav]
           ([model_id],[title],[nav_url],[sort_id])
     VALUES
           (2,'��Ŀ���','category/list.aspx',100)
GO
INSERT INTO [dt_sys_model_nav]
           ([model_id],[title],[nav_url],[sort_id])
     VALUES
           (2,'��չ����','attribute/list.aspx',101)
GO
INSERT INTO [dt_sys_model_nav]
           ([model_id],[title],[nav_url],[sort_id])
     VALUES
           (3,'���ݹ���','download/list.aspx',99)
GO
INSERT INTO [dt_sys_model_nav]
           ([model_id],[title],[nav_url],[sort_id])
     VALUES
           (3,'��Ŀ���','category/list.aspx',100)
GO
INSERT INTO [dt_sys_model_nav]
           ([model_id],[title],[nav_url],[sort_id])
     VALUES
           (4,'���ݹ���','content/list.aspx',99)
GO
INSERT INTO [dt_sys_model_nav]
           ([model_id],[title],[nav_url],[sort_id])
     VALUES
           (4,'��Ŀ���','category/list.aspx',100)
GO
INSERT INTO [dt_sys_channel]
           ([model_id],[name],[title],[sort_id])
     VALUES
           (1,'news','������Ѷ',99)
GO
INSERT INTO [dt_sys_channel]
           ([model_id],[name],[title],[sort_id])
     VALUES
           (2,'goods','�����̳�',100)
GO
INSERT INTO [dt_sys_channel]
           ([model_id],[name],[title],[sort_id])
     VALUES
           (1,'photo','ͼƬ����',101)
GO
INSERT INTO [dt_sys_channel]
           ([model_id],[name],[title],[sort_id])
     VALUES
           (3,'down','��Դ����',102)
GO
INSERT INTO [dt_sys_channel]
           ([model_id],[name],[title],[sort_id])
     VALUES
           (4,'content','��˾����',103)
GO
INSERT INTO [dt_mail_template]
           ([title],[call_index],[maill_title],[content],[is_sys])
     VALUES
           ('�û�ȡ������','getpassword','�һ�������ʾ������ظ����ʼ���',
            '{username}�����ã�<br />����{webname}����ˡ��������롱�һ����룬���������޸����룺<a href="{linkurl}" target="_blank">{linkurl}</a>��������24Сʱ��Ч��'
            ,1)
GO
INSERT INTO [dt_mail_template]
           ([title],[call_index],[maill_title],[content],[is_sys])
     VALUES
           ('ע�ἤ���˻��ʼ�','regverify','��ӭע��{webname}���뼤���˻�',
            '�𾴵�{username}�����ã���ӭ����Ϊ{webname}��Ա�û���������ַ���������˻���<a href="{linkurl}" target="_blank">{linkurl}</a>'
            ,1)
GO
INSERT INTO [dt_payment]
           ([title],[img_url],[remark],[type],[poundage_type],[poundage_amount],[sort_id],[is_lock],[api_path])
     VALUES
           ('��������','/images/pay_delivery.gif','�յ���Ʒ�����֧����֧���ֽ��ˢ������',2,2,0,99,0,'')
GO
INSERT INTO [dt_payment]
           ([title],[img_url],[remark],[type],[poundage_type],[poundage_amount],[sort_id],[is_lock],[api_path])
     VALUES
           ('�˻����','/images/pay_balance.gif','�˻�����ǿͻ�������վ�ϵ��˻������ʽ�',1,2,0,100,0,'balance')
GO
INSERT INTO [dt_payment]
           ([title],[img_url],[remark],[type],[poundage_type],[poundage_amount],[sort_id],[is_lock],[api_path])
     VALUES
           ('֧����','/images/pay_alipay.gif','������������ˣ���Ԥ��/��ѣ����ʷ��ʽ������0.7%�����������ơ�',1,2,0,101,0,'alipay')
GO
INSERT INTO [dt_payment]
           ([title],[img_url],[remark],[type],[poundage_type],[poundage_amount],[sort_id],[is_lock],[api_path])
     VALUES
           ('�Ƹ�ͨ','/images/pay_tenpay.gif','���������0.61%�������ͼ�ֵǧԪ��ҵQQ��',1,2,0,102,0,'tenpay')
GO
INSERT INTO [dt_user_groups]
           ([title],[grade],[upgrade_exp],[amount],[point],[discount],[is_default],[is_upgrade],[is_lock])
     VALUES
           ('��ͨ��Ա',1,0,1,0,100,1,1,0)
GO
INSERT INTO [dt_user_groups]
           ([title],[grade],[upgrade_exp],[amount],[point],[discount],[is_default],[is_upgrade],[is_lock])
     VALUES
           ('VIP��Ա',2,1000,0,0,99,0,1,0)
GO
INSERT INTO [dt_app_oauth]
           ([title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path])
     VALUES
           ('��QQ�ʺŵ�¼',/upload/201301/22/201301222356267017.png','API Key','Secret Key','QQ��������ƽ̨',99,0,'qq')
GO
INSERT INTO [dt_app_oauth]
           ([title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path])
     VALUES
           ('������΢����¼','/upload/201301/22/201301222358108990.png','API Key','Secret Key','����΢������ƽ̨',100,0,'sina')
GO
INSERT INTO [dt_app_oauth]
           ([title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path])
     VALUES
           ('���Ա��˺ŵ�¼','/upload/201301/22/201301222359116140.png','API Key','Secret Key','�Ա�����ƽ̨',101,0,'taobao')
GO
INSERT INTO [dt_app_oauth]
           ([title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path])
     VALUES
           ('�ÿ������ʺŵ�¼','/upload/201301/22/201301222359597445.png','API Key','Secret Key','����������ƽ̨',102,0,'kaixin')
GO
INSERT INTO [dt_app_oauth]
           ([title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path])
     VALUES
           ('���������ʺŵ�¼','/upload/201301/23/201301230000421311.png','API Key','Secret Key','����������ƽ̨',103,0,'renren')
GO
INSERT INTO [dt_app_oauth]
           ([title],[img_url],[app_id],[app_key],[remark],[sort_id],[is_lock],[api_path])
     VALUES
           ('�÷����˺ŵ�¼','/upload/201301/23/201301230001220360.png','API Key','Secret Key','�й��ƶ����ſ���ƽ̨',104,1,'feixin')
GO