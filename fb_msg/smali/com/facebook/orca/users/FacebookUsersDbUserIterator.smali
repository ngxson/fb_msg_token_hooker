.class public Lcom/facebook/orca/users/FacebookUsersDbUserIterator;
.super Ljava/lang/Object;
.source "FacebookUsersDbUserIterator.java"

# interfaces
.implements Lcom/facebook/orca/users/FacebookUserIterator;


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/facebook/orca/database/UsersDatabaseSupplier;

.field private final b:Lcom/facebook/orca/users/UserSerialization;

.field private final c:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private d:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fbid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "first_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "email_addresses"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "phone_numbers"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pic_big"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pic_square"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pic_crop"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rank"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_pushable"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "birthday_month"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "birthday_day"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "birthday_year"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "last_active"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/database/UsersDatabaseSupplier;Lcom/facebook/orca/users/UserSerialization;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->a:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    .line 58
    iput-object p2, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->b:Lcom/facebook/orca/users/UserSerialization;

    .line 59
    iput-object p3, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->c:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 60
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->a:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 64
    const-string v1, "facebook_users"

    sget-object v2, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->e:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    .line 65
    return-void
.end method

.method public a(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->a:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 69
    const-string v1, "facebook_users"

    sget-object v2, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->e:[Ljava/lang/String;

    const-string v7, "rank DESC"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v0, "fbid IN ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, "SELECT DISTINCT fbid FROM facebook_users_name_lookup "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v0, "WHERE normalized_name GLOB "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/common/names/NameNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*\') "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 93
    const-string v2, "facebook_users"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->a:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v1}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 96
    sget-object v2, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->e:[Ljava/lang/String;

    const-string v7, "rank DESC"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    .line 98
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 8
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
    const/4 v3, 0x0

    .line 101
    invoke-static {p1}, Lcom/facebook/orca/users/UserKey;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v2, "fbid IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {v0}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 107
    const-string v2, "facebook_users"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->a:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v1}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 110
    sget-object v2, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->e:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    .line 111
    return-void
.end method

.method public b()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 74
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 75
    const-string v1, "favorite_contacts AS f INNER JOIN facebook_users AS u ON f.fbid = u.fbid"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 77
    sget-object v4, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->e:[Ljava/lang/String;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "u."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 81
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->a:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v1}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 82
    sget-object v2, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->e:[Ljava/lang/String;

    const-string v7, "f.display_order ASC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    .line 83
    return-void
.end method

.method public c()Lcom/facebook/orca/users/User;
    .locals 10

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    const/16 v9, 0xa

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->c:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 118
    iget-object v2, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->b:Lcom/facebook/orca/users/UserSerialization;

    iget-object v3, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->c:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v4, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/users/UserSerialization;->c(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 124
    iget-object v2, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->b:Lcom/facebook/orca/users/UserSerialization;

    iget-object v4, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->c:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v5, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/orca/users/UserSerialization;->d(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 127
    sget-object v2, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    .line 128
    iget-object v5, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 129
    iget-object v2, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    sget-object v2, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    .line 137
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    const/16 v6, 0xe

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 138
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 139
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->b:Lcom/facebook/orca/users/UserSerialization;

    iget-object v6, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->c:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v6, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/facebook/orca/users/UserSerialization;->f(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/orca/users/LastActive;

    move-result-object v1

    .line 142
    :cond_1
    new-instance v5, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v5}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v6, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    iget-object v7, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/facebook/orca/users/UserBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/users/UserBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/users/UserBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/PicCropInfo;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/users/UserBuilder;->a(F)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    new-instance v3, Lcom/facebook/orca/users/Birthday;

    iget-object v4, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget-object v5, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    const/16 v6, 0xb

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iget-object v6, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    const/16 v7, 0xc

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/facebook/orca/users/Birthday;-><init>(III)V

    invoke-virtual {v0, v3}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Birthday;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/common/util/TriState;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/LastActive;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 159
    :cond_2
    return-object v1

    .line 132
    :cond_3
    sget-object v2, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    goto/16 :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;->d:Landroid/database/Cursor;

    .line 167
    :cond_0
    return-void
.end method
