.class Lcom/facebook/orca/database/DbFetchThreadUsersHandler;
.super Ljava/lang/Object;
.source "DbFetchThreadUsersHandler.java"


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

.field private final b:Lcom/facebook/orca/users/UserSerialization;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_key"

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

    const-string v2, "pic_big"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pic_square"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pic_crop"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "last_active"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->e:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/database/ThreadsDatabaseSupplier;Ljavax/inject/Provider;Lcom/facebook/orca/users/UserSerialization;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/database/ThreadsDatabaseSupplier;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;",
            "Lcom/facebook/orca/users/UserSerialization;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->a:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    .line 47
    iput-object p3, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    .line 48
    iput-object p2, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->c:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->d:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 50
    return-void
.end method

.method private b(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/FacebookUserIterator;

    .line 124
    invoke-interface {v0, p1}, Lcom/facebook/orca/users/FacebookUserIterator;->a(Ljava/util/Collection;)V

    .line 127
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()Lcom/facebook/orca/users/User;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    throw v1

    :cond_0
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    .line 134
    return-object v1
.end method


# virtual methods
.method a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 68
    const-string v0, "DbFetchThreadUsersHandler.doThreadUsersQuery"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v8

    .line 69
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v9

    .line 70
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->b(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v10

    .line 74
    if-eqz p1, :cond_4

    .line 75
    invoke-static {p1}, Lcom/facebook/orca/users/UserKey;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user_key IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->a:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 79
    const-string v1, "thread_users"

    sget-object v2, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->e:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 81
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    .line 83
    new-instance v6, Lcom/facebook/orca/users/Name;

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v1, v2}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->d:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v1, 0x6

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    move-object v2, v0

    .line 93
    :goto_2
    const/4 v0, 0x7

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->d:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v1, 0x7

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserSerialization;->f(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    move-object v1, v0

    .line 99
    :goto_3
    invoke-interface {v10, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 103
    :goto_4
    new-instance v7, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v7}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v11

    invoke-virtual {v5}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/facebook/orca/users/UserBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/facebook/orca/users/UserBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/PicCropInfo;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/LastActive;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 112
    invoke-interface {v9, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 116
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0

    .line 114
    :cond_0
    :try_start_1
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 116
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->a()J

    return-object v0

    :cond_1
    move-object v0, v4

    goto :goto_4

    :cond_2
    move-object v1, v4

    goto :goto_3

    :cond_3
    move-object v2, v4

    goto/16 :goto_2

    :cond_4
    move-object v3, v4

    goto/16 :goto_0
.end method
