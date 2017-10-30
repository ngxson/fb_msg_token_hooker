.class public Lcom/facebook/orca/database/DbInsertFriendUsersHandler;
.super Ljava/lang/Object;
.source "DbInsertFriendUsersHandler.java"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/database/UsersDatabaseSupplier;

.field private final c:Lcom/facebook/orca/users/UserSerialization;

.field private final d:Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

.field private final e:Lcom/facebook/orca/common/names/NameSplitter;

.field private final f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/database/UsersDatabaseSupplier;Lcom/facebook/orca/users/UserSerialization;Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;Lcom/facebook/orca/common/names/NameSplitter;Lcom/facebook/orca/database/DbUsersPropertyUtil;Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/database/UsersDatabaseSupplier;",
            "Lcom/facebook/orca/users/UserSerialization;",
            "Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;",
            "Lcom/facebook/orca/common/names/NameSplitter;",
            "Lcom/facebook/orca/database/DbUsersPropertyUtil;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    iput-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Ljava/lang/Class;

    .line 44
    iput-object p1, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    .line 45
    iput-object p2, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    .line 46
    iput-object p3, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->d:Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    .line 47
    iput-object p4, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->e:Lcom/facebook/orca/common/names/NameSplitter;

    .line 48
    iput-object p5, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    .line 49
    iput-object p6, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->g:Ljavax/inject/Provider;

    .line 50
    return-void
.end method

.method private a(Lcom/facebook/orca/users/User;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 114
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 115
    const-string v0, "fbid"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    const-string v3, "first_name"

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v3, "last_name"

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v3, "name"

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    const-string v0, "pic_big"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "pic_square"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/PicCropInfo;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 127
    const-string v3, "pic_crop"

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1
    const-string v0, "email_addresses"

    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/google/common/collect/ImmutableList;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "phone_numbers"

    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/users/UserSerialization;->b(Lcom/google/common/collect/ImmutableList;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "rank"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->s()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 135
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->t()Lcom/facebook/common/util/TriState;

    move-result-object v0

    sget-object v3, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-eq v0, v3, :cond_2

    .line 136
    const-string v3, "is_pushable"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->t()Lcom/facebook/common/util/TriState;

    move-result-object v0

    sget-object v4, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v4, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->v()Lcom/facebook/orca/users/Birthday;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    const-string v0, "birthday_month"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->v()Lcom/facebook/orca/users/Birthday;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/Birthday;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v0, "birthday_day"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->v()Lcom/facebook/orca/users/Birthday;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/Birthday;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v0, "birthday_year"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->v()Lcom/facebook/orca/users/Birthday;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/Birthday;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 145
    const-string v0, "last_active"

    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/LastActive;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 151
    const-string v3, "facebook_users"

    const-string v4, ""

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->d:Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->e:Lcom/facebook/orca/common/names/NameSplitter;

    invoke-virtual {v4, v1}, Lcom/facebook/orca/common/names/NameSplitter;->a(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    return-void

    :cond_5
    move v0, v1

    .line 136
    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/users/User;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 214
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 215
    const-string v2, "fbid"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v2, "display_order"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v2, "favorite_contacts"

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 218
    return-void
.end method

.method private b(Lcom/facebook/orca/users/User;)V
    .locals 7
    .parameter

    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserFbidIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 204
    const-string v2, "last_active"

    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/LastActive;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v2}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 209
    const-string v3, "facebook_users"

    const-string v4, "fbid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 56
    :try_start_0
    const-string v0, "facebook_users"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    const-string v0, "facebook_users_name_lookup"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 58
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 65
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    :try_start_1
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Ljava/lang/Class;

    const-string v3, "SQLException"

    invoke-static {v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(Lcom/facebook/orca/server/GetFriendsResult;)V
    .locals 6
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 71
    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/GetFriendsResult;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/GetFriendsResult;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 76
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a(Lcom/facebook/orca/users/User;)V

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v3, Lcom/facebook/orca/database/DbProperties;->e:Lcom/facebook/orca/database/DbUserPropertyKey;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v3

    .line 81
    int-to-long v0, v1

    add-long/2addr v0, v3

    .line 82
    iget-object v3, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v4, Lcom/facebook/orca/database/DbProperties;->e:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v3, v4, v0, v1}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 84
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 91
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    :try_start_1
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Ljava/lang/Class;

    const-string v3, "SQLException"

    invoke-static {v1, v3, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(Lcom/google/common/collect/ImmutableList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 158
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 160
    :try_start_0
    const-string v0, "favorite_contacts"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 163
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a(Lcom/facebook/orca/users/User;I)V

    move v1, v2

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->f:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v1, v4, v5}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 167
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->g:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 171
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    :try_start_1
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Ljava/lang/Class;

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public b()V
    .locals 7

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 98
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a(Lcom/facebook/orca/users/User;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v2, Lcom/facebook/orca/database/DbProperties;->e:Lcom/facebook/orca/database/DbUserPropertyKey;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v2

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v4, Lcom/facebook/orca/database/DbProperties;->e:Lcom/facebook/orca/database/DbUserPropertyKey;

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    invoke-virtual {v0, v4, v2, v3}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 103
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 110
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    :try_start_1
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Ljava/lang/Class;

    const-string v3, "SQLException"

    invoke-static {v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public b(Lcom/google/common/collect/ImmutableList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 184
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 185
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b(Lcom/facebook/orca/users/User;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    :try_start_1
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a:Ljava/lang/Class;

    const-string v3, "SQLException"

    invoke-static {v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 187
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 194
    return-void
.end method
