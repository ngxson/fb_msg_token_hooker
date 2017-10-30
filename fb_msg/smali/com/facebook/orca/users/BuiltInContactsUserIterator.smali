.class public Lcom/facebook/orca/users/BuiltInContactsUserIterator;
.super Ljava/lang/Object;
.source "BuiltInContactsUserIterator.java"


# instance fields
.field protected a:Landroid/database/Cursor;

.field private final b:Landroid/content/ContentResolver;

.field private final c:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

.field private d:Lcom/facebook/orca/users/UserBuilder;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->b:Landroid/content/ContentResolver;

    .line 33
    iput-object p2, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->c:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;I)Lcom/facebook/orca/users/UserPhoneNumber;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 147
    const-string v0, "parseSmsAddress"

    const-string v1, "parseSmsAddress"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->c:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;

    move-result-object v2

    .line 149
    const/4 v0, 0x0

    .line 150
    invoke-virtual {v2}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v2, p2}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a(I)Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v0

    .line 153
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 154
    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v2, v5

    const-string v3, "display_name"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "data2"

    aput-object v4, v2, v3

    const-string v3, "contact_id = ?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    const-string v5, "contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a:Landroid/database/Cursor;

    .line 71
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 81
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->b:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 93
    return-object v3
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "contact_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "data1"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "data2"

    aput-object v5, v2, v4

    const-string v5, "contact_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a:Landroid/database/Cursor;

    .line 48
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, v0}, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->b(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a:Landroid/database/Cursor;

    .line 78
    :cond_0
    return-void
.end method

.method public c()Lcom/facebook/orca/users/User;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object v1

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    if-nez v0, :cond_5

    .line 109
    new-instance v0, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    sget-object v3, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0, v3, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-object v0, v1

    .line 117
    :goto_1
    iget-object v2, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserBuilder;->h()Lcom/facebook/orca/users/Name;

    move-result-object v2

    if-nez v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    new-instance v3, Lcom/facebook/orca/users/Name;

    invoke-direct {v3, v1, v1, v4}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    .line 121
    :cond_2
    invoke-direct {p0, v5, v6}, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a(Ljava/lang/String;I)Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v3

    .line 122
    if-eqz v3, :cond_4

    .line 123
    iget-object v2, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserBuilder;->d()Ljava/util/List;

    move-result-object v2

    .line 124
    if-nez v2, :cond_3

    .line 125
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 126
    iget-object v4, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v4, v2}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 128
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 129
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_4
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 134
    goto :goto_0

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 113
    new-instance v3, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    iput-object v3, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    .line 114
    iget-object v3, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    sget-object v7, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v3, v7, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    goto :goto_1

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 140
    iput-object v1, p0, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->d:Lcom/facebook/orca/users/UserBuilder;

    move-object v1, v0

    .line 141
    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method
