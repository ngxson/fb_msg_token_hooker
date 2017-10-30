.class public Lcom/facebook/orca/users/PhoneUserIterator;
.super Ljava/lang/Object;
.source "PhoneUserIterator.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/ContentResolver;

.field private final c:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

.field private d:Landroid/database/Cursor;

.field private e:Lcom/facebook/orca/users/UserBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    const-class v0, Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Ljava/lang/String;

    .line 35
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/orca/users/PhoneUserIterator;->f:[Ljava/lang/String;

    .line 39
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data_version"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data_version"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/users/PhoneUserIterator;->g:[Ljava/lang/String;

    .line 59
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/orca/users/PhoneUserIterator;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Landroid/content/ContentResolver;

    .line 73
    iput-object p2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    .line 74
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 205
    invoke-static {}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a()Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    move-result-object v4

    .line 206
    if-eqz p1, :cond_0

    .line 207
    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimetype IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.item/name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "vnd.android.cursor.item/email_v2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "vnd.android.cursor.item/phone_v2"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/facebook/orca/common/util/SqlUtil;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->g:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->b()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    .line 220
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 137
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Landroid/content/ContentResolver;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->f:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 140
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 141
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 146
    return-void
.end method

.method private a(Ljava/util/Collection;Lcom/facebook/orca/users/PhoneUserIterator$Exclusion;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;",
            "Lcom/facebook/orca/users/PhoneUserIterator$Exclusion;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserKey;

    .line 175
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    if-eq v2, v3, :cond_0

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot look up phone for user key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_1
    invoke-static {p1}, Lcom/facebook/orca/users/UserKey;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 184
    sget-object v0, Lcom/facebook/orca/users/PhoneUserIterator$Exclusion;->EXCLUDE:Lcom/facebook/orca/users/PhoneUserIterator$Exclusion;

    if-ne p2, v0, :cond_3

    .line 185
    const-string v0, " NOT IN "

    .line 190
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contact_id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    sget-object v1, Lcom/facebook/orca/users/PhoneUserIterator;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Searching for contact IDs where: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/facebook/orca/users/PhoneUserIterator;->a(Ljava/lang/String;)V

    .line 198
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 199
    sget-object v0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contacts, but only found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_2
    return-void

    .line 187
    :cond_3
    const-string v0, " IN "

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->g:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    .line 133
    return-void
.end method

.method private b(Ljava/lang/String;I)Lcom/facebook/orca/users/UserPhoneNumber;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 303
    const-string v0, "parseSmsAddress"

    const-string v1, "parseSmsAddress"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 304
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;

    move-result-object v2

    .line 305
    const/4 v0, 0x0

    .line 306
    invoke-virtual {v2}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->c:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->a(Ljava/lang/String;I)Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v0

    .line 309
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 310
    return-object v0
.end method

.method private b(Ljava/lang/String;ILjava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 149
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Landroid/content/ContentResolver;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->f:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 153
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 96
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v7

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/orca/users/PhoneUserIterator;->h:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 106
    if-nez v1, :cond_2

    .line 107
    :try_start_1
    sget-object v0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Ljava/lang/String;

    const-string v2, "Frequent contacts fetch returned null cursor"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 120
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_1
    sget-object v0, Lcom/facebook/orca/users/PhoneUserIterator$Exclusion;->INCLUDE:Lcom/facebook/orca/users/PhoneUserIterator$Exclusion;

    invoke-direct {p0, v7, v0}, Lcom/facebook/orca/users/PhoneUserIterator;->a(Ljava/util/Collection;Lcom/facebook/orca/users/PhoneUserIterator$Exclusion;)V

    .line 125
    return-object v7

    .line 108
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_4

    .line 109
    sget-object v0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Ljava/lang/String;

    const-string v2, "Frequent contacts fetch returned no entries"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    .line 120
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 111
    :cond_4
    :try_start_3
    sget-object v0, Lcom/facebook/orca/users/PhoneUserIterator;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Frequent contacts fetch returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lcom/facebook/orca/users/UserKey;

    sget-object v2, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 119
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/users/PhoneUserIterator;->a(Ljava/lang/String;ILjava/util/List;)V

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/users/PhoneUserIterator;->b(Ljava/lang/String;ILjava/util/List;)V

    .line 86
    invoke-direct {p0, v0}, Lcom/facebook/orca/users/PhoneUserIterator;->a(Ljava/util/List;)V

    .line 87
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    const-string v0, "initWithExcludedUserKeys"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 169
    sget-object v1, Lcom/facebook/orca/users/PhoneUserIterator$Exclusion;->EXCLUDE:Lcom/facebook/orca/users/PhoneUserIterator$Exclusion;

    invoke-direct {p0, p1, v1}, Lcom/facebook/orca/users/PhoneUserIterator;->a(Ljava/util/Collection;Lcom/facebook/orca/users/PhoneUserIterator$Exclusion;)V

    .line 170
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 171
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    .line 227
    :cond_0
    return-void
.end method

.method public c()Lcom/facebook/orca/users/User;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0xa

    const/16 v8, 0x9

    const/16 v7, 0x8

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 232
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 234
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 235
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 236
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 241
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 242
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    if-nez v0, :cond_3

    .line 243
    new-instance v0, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    sget-object v3, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0, v3, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-object v0, v1

    .line 251
    :goto_0
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 252
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    iget-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 254
    iget-object v4, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    iget-object v6, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v6}, Lcom/facebook/orca/users/UserBuilder;->h()Lcom/facebook/orca/users/Name;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_2

    .line 257
    :cond_1
    new-instance v5, Lcom/facebook/orca/users/Name;

    invoke-direct {v5, v3, v4, v2}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v2, v5}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    .line 289
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 299
    :goto_2
    return-object v0

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 246
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 247
    new-instance v3, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    iput-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    .line 248
    iget-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    sget-object v6, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v3, v6, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    goto :goto_0

    .line 260
    :cond_4
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 261
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 263
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 265
    invoke-static {v3}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 266
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserBuilder;->c()Ljava/util/List;

    move-result-object v2

    .line 267
    if-nez v2, :cond_5

    .line 268
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 269
    iget-object v5, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v5, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 271
    :cond_5
    new-instance v5, Lcom/facebook/orca/users/UserEmailAddress;

    invoke-direct {v5, v3, v4}, Lcom/facebook/orca/users/UserEmailAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    :cond_6
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    iget-object v3, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 277
    iget-object v4, p0, Lcom/facebook/orca/users/PhoneUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 278
    invoke-direct {p0, v2, v3}, Lcom/facebook/orca/users/PhoneUserIterator;->b(Ljava/lang/String;I)Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v3

    .line 280
    if-eqz v3, :cond_2

    .line 281
    iget-object v2, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserBuilder;->d()Ljava/util/List;

    move-result-object v2

    .line 282
    if-nez v2, :cond_7

    .line 283
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 284
    iget-object v4, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v4, v2}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 286
    :cond_7
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 294
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    if-eqz v0, :cond_9

    .line 295
    iget-object v0, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 296
    iput-object v1, p0, Lcom/facebook/orca/users/PhoneUserIterator;->e:Lcom/facebook/orca/users/UserBuilder;

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    .line 299
    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method
