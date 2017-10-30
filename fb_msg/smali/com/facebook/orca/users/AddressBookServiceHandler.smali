.class public Lcom/facebook/orca/users/AddressBookServiceHandler;
.super Ljava/lang/Object;
.source "AddressBookServiceHandler.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:I


# instance fields
.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

.field private final e:Lcom/facebook/orca/protocol/methods/UpdateMessagingFavoritesMethod;

.field private final f:Lcom/facebook/orca/protocol/methods/FetchMessagingFavoritesMethod;

.field private final g:Lcom/facebook/orca/protocol/methods/FetchLastActiveMethod;

.field private final h:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

.field private final i:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

.field private final j:Lcom/facebook/orca/database/UsersDatabaseSupplier;

.field private final k:Lcom/facebook/orca/database/DbUsersPropertyUtil;

.field private final l:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final m:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/facebook/orca/users/AddressBookServiceHandler;

    sput-object v0, Lcom/facebook/orca/users/AddressBookServiceHandler;->a:Ljava/lang/Class;

    .line 46
    const/16 v0, 0xf

    sput v0, Lcom/facebook/orca/users/AddressBookServiceHandler;->b:I

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/protocol/methods/GetFriendsMethod;Lcom/facebook/orca/protocol/methods/UpdateMessagingFavoritesMethod;Lcom/facebook/orca/protocol/methods/FetchMessagingFavoritesMethod;Lcom/facebook/orca/protocol/methods/FetchLastActiveMethod;Lcom/facebook/orca/database/DbInsertFriendUsersHandler;Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;Lcom/facebook/orca/database/UsersDatabaseSupplier;Lcom/facebook/orca/database/DbUsersPropertyUtil;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;",
            "Lcom/facebook/orca/protocol/methods/GetFriendsMethod;",
            "Lcom/facebook/orca/protocol/methods/UpdateMessagingFavoritesMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchMessagingFavoritesMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchLastActiveMethod;",
            "Lcom/facebook/orca/database/DbInsertFriendUsersHandler;",
            "Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;",
            "Lcom/facebook/orca/database/UsersDatabaseSupplier;",
            "Lcom/facebook/orca/database/DbUsersPropertyUtil;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Ljavax/inject/Provider;

    .line 89
    iput-object p2, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->d:Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    .line 90
    iput-object p3, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Lcom/facebook/orca/protocol/methods/UpdateMessagingFavoritesMethod;

    .line 91
    iput-object p4, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->f:Lcom/facebook/orca/protocol/methods/FetchMessagingFavoritesMethod;

    .line 92
    iput-object p5, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->g:Lcom/facebook/orca/protocol/methods/FetchLastActiveMethod;

    .line 93
    iput-object p6, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->h:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    .line 94
    iput-object p10, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->m:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 95
    iput-object p7, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->i:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    .line 96
    iput-object p8, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->j:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    .line 97
    iput-object p9, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->k:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    .line 98
    iput-object p11, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->l:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 99
    iput-object p12, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->n:Ljavax/inject/Provider;

    .line 100
    iput-object p13, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->o:Ljavax/inject/Provider;

    .line 101
    return-void
.end method

.method private a(J)Z
    .locals 5
    .parameter

    .prologue
    .line 236
    .line 237
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->j:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 240
    :try_start_0
    invoke-static {p1, p2}, Lcom/facebook/orca/server/GetFriendsParams;->a(J)Lcom/facebook/orca/server/GetFriendsParams;

    move-result-object v2

    .line 241
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 242
    iget-object v3, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->d:Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    invoke-virtual {v0, v3, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/GetFriendsResult;

    .line 243
    iget-object v2, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->h:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v2}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b()V

    .line 244
    iget-object v2, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->h:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a(Lcom/facebook/orca/server/GetFriendsResult;)V

    .line 245
    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/2addr v0, v2

    .line 246
    sget-object v2, Lcom/facebook/orca/users/AddressBookServiceHandler;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " incremental sync results."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 251
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 249
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Lcom/facebook/orca/server/FetchLastActiveResult;
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 125
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->n:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/facebook/orca/server/FetchLastActiveResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/facebook/orca/server/FetchLastActiveResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/google/common/collect/ImmutableList;J)V

    .line 168
    :goto_0
    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->k:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v2, Lcom/facebook/orca/database/DbProperties;->h:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v0, v2, v6, v7}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v2

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 136
    cmp-long v0, v2, v6

    if-eqz v0, :cond_1

    sub-long/2addr v4, v2

    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 137
    new-instance v0, Lcom/facebook/orca/server/FetchLastActiveResult;

    sget-object v4, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/facebook/orca/server/FetchLastActiveResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/google/common/collect/ImmutableList;J)V

    goto :goto_0

    .line 144
    :cond_1
    sget v0, Lcom/facebook/orca/users/AddressBookServiceHandler;->b:I

    invoke-static {v0}, Lcom/facebook/orca/server/FetchLastActiveParams;->b(I)Lcom/facebook/orca/server/FetchLastActiveParams;

    move-result-object v0

    .line 145
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    sget v0, Lcom/facebook/orca/users/AddressBookServiceHandler;->b:I

    invoke-static {v0}, Lcom/facebook/orca/server/FetchLastActiveParams;->a(I)Lcom/facebook/orca/server/FetchLastActiveParams;

    move-result-object v0

    move-object v1, v0

    .line 149
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 150
    iget-object v2, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->g:Lcom/facebook/orca/protocol/methods/FetchLastActiveMethod;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchLastActiveResult;

    .line 153
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->j:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v1}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->h:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchLastActiveResult;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b(Lcom/google/common/collect/ImmutableList;)V

    .line 157
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 158
    iget-object v2, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->i:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v2}, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 164
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->k:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v2, Lcom/facebook/orca/database/DbProperties;->h:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/UpdateFavoriteContactsParams;

    .line 286
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 288
    iget-object v2, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->e:Lcom/facebook/orca/protocol/methods/UpdateMessagingFavoritesMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->h:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/UpdateFavoriteContactsParams;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 293
    :cond_0
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->k:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->d:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v0, v1, v6, v7}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 175
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    sub-long/2addr v2, v0

    const-wide/32 v4, 0xa4cb80

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    .line 180
    :cond_0
    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    .line 182
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/users/AddressBookServiceHandler;->a(J)Z
    :try_end_0
    .catch Lcom/facebook/orca/protocol/base/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 196
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->k:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v2, Lcom/facebook/orca/database/DbProperties;->d:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/ApiException;->b()Lcom/facebook/orca/protocol/base/ApiErrorResult;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/ApiErrorResult;->a()I

    move-result v1

    const/16 v2, 0xc1

    if-ne v1, v2, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->d()Z

    move-result v0

    goto :goto_1

    .line 189
    :cond_1
    throw v0

    .line 193
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->d()Z

    move-result v0

    goto :goto_1
.end method

.method private d()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    .line 203
    const/4 v0, 0x0

    move v4, v2

    move-object v5, v0

    move v3, v1

    .line 206
    :goto_0
    if-nez v4, :cond_1

    const/16 v0, 0x14

    .line 208
    :goto_1
    invoke-static {v0, v5}, Lcom/facebook/orca/server/GetFriendsParams;->a(ILjava/lang/String;)Lcom/facebook/orca/server/GetFriendsParams;

    move-result-object v5

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 210
    iget-object v6, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->d:Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    invoke-virtual {v0, v6, v5}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/GetFriendsResult;

    .line 212
    iget-object v5, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->j:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v5}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 213
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 215
    if-eqz v3, :cond_0

    .line 216
    :try_start_0
    iget-object v3, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->h:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v3}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a()V

    .line 217
    iget-object v3, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->h:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v3}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->b()V

    move v3, v2

    .line 221
    :cond_0
    iget-object v5, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->h:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v5, v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a(Lcom/facebook/orca/server/GetFriendsResult;)V

    .line 222
    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->f()Ljava/lang/String;

    move-result-object v5

    .line 223
    sget-object v7, Lcom/facebook/orca/users/AddressBookServiceHandler;->a:Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " friends in batch"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Lcom/facebook/orca/server/GetFriendsResult;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/2addr v0, v4

    .line 225
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 229
    iget-object v4, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->l:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v6, "com.facebook.orca.ACTION_FRIEND_SYNC_PROGRESS"

    invoke-virtual {v4, v6}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V

    .line 230
    if-nez v5, :cond_3

    .line 231
    sget-object v3, Lcom/facebook/orca/users/AddressBookServiceHandler;->a:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " friends."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 232
    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    return v0

    .line 206
    :cond_1
    const/16 v0, 0x32

    goto/16 :goto_1

    .line 227
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_2
    move v0, v2

    .line 232
    goto :goto_2

    :cond_3
    move v4, v0

    goto/16 :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 255
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->k:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->g:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    .line 261
    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->a()Lcom/facebook/orca/server/FetchMessagingFavoritesResult;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->j:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v1}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->h:Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMessagingFavoritesResult;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 272
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 273
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->i:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 278
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->l:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v1, "com.facebook.orca.FAVORITE_CONTACT_SYNC_PROGRESS"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->o:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()Lcom/facebook/orca/server/FetchMessagingFavoritesResult;
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 299
    iget-object v1, p0, Lcom/facebook/orca/users/AddressBookServiceHandler;->f:Lcom/facebook/orca/protocol/methods/FetchMessagingFavoritesMethod;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMessagingFavoritesResult;

    .line 301
    return-object v0
.end method

.method public a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, "sync_address_book"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->e()V

    .line 108
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->c()Z

    .line 109
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->b()Lcom/facebook/orca/server/FetchLastActiveResult;

    .line 110
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 111
    :cond_0
    const-string v1, "fetch_favorite_contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->a()Lcom/facebook/orca/server/FetchMessagingFavoritesResult;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_1
    const-string v1, "sync_top_last_active"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-direct {p0}, Lcom/facebook/orca/users/AddressBookServiceHandler;->b()Lcom/facebook/orca/server/FetchLastActiveResult;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_2
    const-string v1, "update_favorite_contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/AddressBookServiceHandler;->b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
