.class public Lcom/facebook/contacts/data/DbFetchContactHandler;
.super Ljava/lang/Object;
.source "DbFetchContactHandler.java"


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

.field private final b:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/contacts/data/DbFetchContactHandler;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/contacts/data/ContactsDatabaseSupplier;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/contacts/data/DbFetchContactHandler;->a:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    .line 33
    iput-object p2, p0, Lcom/facebook/contacts/data/DbFetchContactHandler;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/contacts/server/FetchContactResult;
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 37
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->FACEBOOK_CONTACT:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v7

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 41
    iget-object v0, p0, Lcom/facebook/contacts/data/DbFetchContactHandler;->a:Lcom/facebook/contacts/data/ContactsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/contacts/data/ContactsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v1, v2, :cond_2

    .line 43
    const-string v1, "contacts"

    sget-object v2, Lcom/facebook/contacts/data/DbFetchContactHandler;->c:[Ljava/lang/String;

    const-string v3, "contact_id IN (SELECT contact_id FROM contacts_indexed_data WHERE type = ? AND indexed_data = ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v8, "profile_fbid"

    aput-object v8, v4, v6

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 66
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lcom/facebook/contacts/data/DbFetchContactHandler;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/facebook/contacts/models/Contact;

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/models/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 73
    if-eqz v0, :cond_3

    .line 74
    new-instance v1, Lcom/facebook/contacts/server/FetchContactResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/facebook/contacts/server/FetchContactResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;JLcom/facebook/contacts/models/Contact;)V

    move-object v0, v1

    .line 78
    :goto_3
    return-object v0

    :cond_1
    move v0, v6

    .line 37
    goto :goto_0

    .line 53
    :cond_2
    const-string v1, "contacts"

    sget-object v2, Lcom/facebook/contacts/data/DbFetchContactHandler;->c:[Ljava/lang/String;

    const-string v3, "contact_id = ?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 78
    :cond_3
    sget-object v0, Lcom/facebook/contacts/server/FetchContactResult;->a:Lcom/facebook/contacts/server/FetchContactResult;

    goto :goto_3

    :cond_4
    move-object v0, v5

    goto :goto_2
.end method
