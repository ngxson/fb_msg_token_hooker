.class public Lcom/facebook/contacts/iterator/DbContactIteratorFactory;
.super Ljava/lang/Object;
.source "DbContactIteratorFactory.java"


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/contacts/iterator/DbContactIterator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/contacts/iterator/DbContactIterator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/contacts/iterator/DbContactIteratorFactory;->a:Ljavax/inject/Provider;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/iterator/DbContactIterator;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;->a:Lcom/facebook/contacts/iterator/DbContactIteratorParams;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/iterator/DbContactIteratorFactory;->a(Lcom/facebook/contacts/iterator/DbContactIteratorParams;)Lcom/facebook/contacts/iterator/DbContactIterator;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/contacts/iterator/DbContactIteratorParams;)Lcom/facebook/contacts/iterator/DbContactIterator;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/contacts/iterator/DbContactIteratorFactory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/iterator/DbContactIterator;

    .line 34
    invoke-virtual {v0, p1}, Lcom/facebook/contacts/iterator/DbContactIterator;->a(Lcom/facebook/contacts/iterator/DbContactIteratorParams;)V

    .line 35
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/contacts/iterator/DbContactIterator;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 58
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "US"

    .line 61
    :cond_0
    invoke-virtual {v1, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 62
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v6

    .line 64
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 65
    const-string v0, "contacts"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/facebook/contacts/iterator/DbContactIteratorParams;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "data"

    aput-object v3, v2, v8

    const-string v3, "contact_id IN (SELECT contact_id FROM contacts_indexed_data WHERE type = ? AND indexed_data = ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v7, "phone_e164"

    aput-object v7, v4, v8

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/contacts/iterator/DbContactIteratorParams;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/facebook/contacts/iterator/DbContactIteratorFactory;->a(Lcom/facebook/contacts/iterator/DbContactIteratorParams;)Lcom/facebook/contacts/iterator/DbContactIterator;

    move-result-object v0

    return-object v0
.end method
