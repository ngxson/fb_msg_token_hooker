.class Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ThreadsDbModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/DbServiceHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/database/ThreadsDbModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/database/ThreadsDbModule;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->a:Lcom/facebook/orca/database/ThreadsDbModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/database/ThreadsDbModule;Lcom/facebook/orca/database/ThreadsDbModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;-><init>(Lcom/facebook/orca/database/ThreadsDbModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/DbServiceHandler;
    .locals 19

    .prologue
    .line 121
    new-instance v3, Lcom/facebook/orca/database/DbServiceHandler;

    const-class v4, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-class v5, Lcom/facebook/orca/cache/DataCache;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/cache/DataCache;

    const-class v6, Lcom/facebook/orca/database/DbFetchThreadsHandler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/database/DbFetchThreadsHandler;

    const-class v7, Lcom/facebook/orca/database/DbFetchThreadHandler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/database/DbFetchThreadHandler;

    const-class v8, Lcom/facebook/orca/database/DbInsertThreadsHandler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/database/DbInsertThreadsHandler;

    const-class v9, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    const-class v10, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    const-class v11, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    const-class v12, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v13, Lcom/facebook/orca/appconfig/AppConfigSerialization;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/orca/appconfig/AppConfigSerialization;

    const-class v14, Lcom/facebook/orca/threads/MessagesCollectionMerger;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/orca/threads/MessagesCollectionMerger;

    const-class v15, Lcom/facebook/orca/app/OrcaDataManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/orca/app/OrcaDataManager;

    const-class v16, Lcom/facebook/orca/database/DbCache;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/facebook/orca/database/DbCache;

    const-class v17, Ljava/lang/Boolean;

    const-class v18, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v17

    invoke-direct/range {v3 .. v17}, Lcom/facebook/orca/database/DbServiceHandler;-><init>(Lcom/facebook/orca/app/OrcaActivityBroadcaster;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/database/DbFetchThreadsHandler;Lcom/facebook/orca/database/DbFetchThreadHandler;Lcom/facebook/orca/database/DbInsertThreadsHandler;Lcom/facebook/orca/database/DbInsertThreadUsersHandler;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Lcom/facebook/orca/database/ThreadsDatabaseSupplier;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/appconfig/AppConfigSerialization;Lcom/facebook/orca/threads/MessagesCollectionMerger;Lcom/facebook/orca/app/OrcaDataManager;Lcom/facebook/orca/database/DbCache;Ljavax/inject/Provider;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;->a()Lcom/facebook/orca/database/DbServiceHandler;

    move-result-object v0

    return-object v0
.end method
