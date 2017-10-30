.class Lcom/facebook/orca/database/DbInsertThreadUsersHandler;
.super Ljava/lang/Object;
.source "DbInsertThreadUsersHandler.java"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

.field private final c:Lcom/facebook/orca/users/UserSerialization;


# direct methods
.method constructor <init>(Lcom/facebook/orca/database/ThreadsDatabaseSupplier;Lcom/facebook/orca/users/UserSerialization;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    iput-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a:Ljava/lang/Class;

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->b:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    .line 32
    iput-object p2, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    .line 33
    return-void
.end method


# virtual methods
.method a(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->b:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 39
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 41
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 42
    const-string v4, "user_key"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    const-string v5, "first_name"

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v5, "last_name"

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v5, "name"

    invoke-virtual {v4}, Lcom/facebook/orca/users/Name;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    const-string v4, "pic_big"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v4, "pic_square"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 53
    iget-object v4, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/PicCropInfo;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v4

    .line 54
    const-string v5, "pic_crop"

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 58
    const-string v4, "last_active"

    iget-object v5, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->c:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/LastActive;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_2
    const-string v0, "thread_users"

    const-string v4, ""

    invoke-virtual {v1, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    :try_start_1
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a:Ljava/lang/Class;

    const-string v3, "SQLException"

    invoke-static {v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 65
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 72
    return-void
.end method
