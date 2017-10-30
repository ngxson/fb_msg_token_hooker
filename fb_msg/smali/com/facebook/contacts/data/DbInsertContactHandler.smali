.class public Lcom/facebook/contacts/data/DbInsertContactHandler;
.super Ljava/lang/Object;
.source "DbInsertContactHandler.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

.field private final c:Lcom/facebook/contacts/data/ContactSerialization;

.field private final d:Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;

.field private final e:Lcom/facebook/orca/common/names/NameSplitter;

.field private final f:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/facebook/contacts/data/DbInsertContactHandler;

    sput-object v0, Lcom/facebook/contacts/data/DbInsertContactHandler;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/contacts/data/ContactsDatabaseSupplier;Lcom/facebook/contacts/data/ContactSerialization;Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;Lcom/facebook/orca/common/names/NameSplitter;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/contacts/data/DbInsertContactHandler;->b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    .line 54
    iput-object p2, p0, Lcom/facebook/contacts/data/DbInsertContactHandler;->c:Lcom/facebook/contacts/data/ContactSerialization;

    .line 55
    iput-object p3, p0, Lcom/facebook/contacts/data/DbInsertContactHandler;->d:Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;

    .line 56
    iput-object p4, p0, Lcom/facebook/contacts/data/DbInsertContactHandler;->e:Lcom/facebook/orca/common/names/NameSplitter;

    .line 57
    iput-object p5, p0, Lcom/facebook/contacts/data/DbInsertContactHandler;->f:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 58
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/contacts/models/Contact;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 83
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 85
    const-string v0, "contact_id"

    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "data"

    iget-object v1, p0, Lcom/facebook/contacts/data/DbInsertContactHandler;->c:Lcom/facebook/contacts/data/ContactSerialization;

    invoke-virtual {v1, p1}, Lcom/facebook/contacts/data/ContactSerialization;->a(Lcom/facebook/contacts/models/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->b()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    const-string v1, "type"

    const-string v3, "profile_fbid"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "contact_id"

    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "indexed_data"

    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 100
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->g()F

    move-result v0

    .line 101
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 102
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 103
    const-string v3, "type"

    const-string v5, "communication_rank"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v3, "contact_id"

    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v3, "indexed_data"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 110
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v5

    .line 111
    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/models/ContactPhone;

    .line 113
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 114
    const-string v7, "type"

    const-string v8, "phone_e164"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v7, "contact_id"

    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v7, "indexed_data"

    invoke-virtual {v0}, Lcom/facebook/contacts/models/ContactPhone;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/facebook/contacts/data/DbInsertContactHandler;->f:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0}, Lcom/facebook/contacts/models/ContactPhone;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    iget-object v3, p0, Lcom/facebook/contacts/data/DbInsertContactHandler;->f:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 133
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 134
    const-string v8, "type"

    const-string v9, "phone_national"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v8, "contact_id"

    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v8, "indexed_data"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v5, v7}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 139
    iget-object v7, p0, Lcom/facebook/contacts/data/DbInsertContactHandler;->f:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v7, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getLengthOfGeographicalAreaCode(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v0

    .line 140
    if-lez v0, :cond_1

    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 145
    const-string v7, "type"

    const-string v8, "phone_local"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v7, "contact_id"

    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v7, "indexed_data"

    invoke-virtual {v3, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto/16 :goto_1

    :cond_2
    move-object v1, v2

    .line 96
    goto/16 :goto_0

    .line 122
    :catch_0
    move-exception v3

    .line 123
    sget-object v7, Lcom/facebook/contacts/data/DbInsertContactHandler;->a:Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing invalid E.164 number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/facebook/contacts/models/ContactPhone;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " Error: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/facebook/contacts/data/DbInsertContactHandler;->b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 155
    :try_start_1
    const-string v0, "contacts"

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 156
    const-string v0, "contacts_indexed_data"

    const-string v4, "contact_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/facebook/contacts/data/DbInsertContactHandler;->d:Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;

    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->c()Lcom/facebook/orca/users/Name;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/orca/users/Name;->h()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/contacts/data/DbInsertContactHandler;->e:Lcom/facebook/orca/common/names/NameSplitter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/facebook/orca/common/names/NameSplitter;->a(I)I

    move-result v7

    invoke-virtual {v0, v4, v6, v7}, Lcom/facebook/contacts/data/DbInsertContactHandler$ContactNameLookupBuilder;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    if-eqz v1, :cond_4

    .line 165
    const-string v0, "contacts_indexed_data"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 167
    :cond_4
    if-eqz v2, :cond_5

    .line 168
    const-string v0, "contacts_indexed_data"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 170
    :cond_5
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 171
    sget-object v2, Lcom/facebook/contacts/data/DbInsertContactHandler;->a:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserting phone lookup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 172
    const-string v2, "contacts_indexed_data"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 176
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 174
    :cond_6
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    return-void
.end method

.method public a(Lcom/google/common/collect/ImmutableCollection;Lcom/facebook/contacts/data/DbInsertContactHandler$InsertionType;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Lcom/facebook/contacts/models/Contact;",
            ">;",
            "Lcom/facebook/contacts/data/DbInsertContactHandler$InsertionType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/contacts/data/DbInsertContactHandler;->b:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 67
    :try_start_0
    sget-object v0, Lcom/facebook/contacts/data/DbInsertContactHandler$InsertionType;->REPLACE_ALL:Lcom/facebook/contacts/data/DbInsertContactHandler$InsertionType;

    if-ne p2, v0, :cond_0

    .line 68
    const-string v0, "contacts"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    const-string v0, "contacts_indexed_data"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/models/Contact;

    .line 73
    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/DbInsertContactHandler;->a(Lcom/facebook/contacts/models/Contact;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 75
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 79
    return-void
.end method
