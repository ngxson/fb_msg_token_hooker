.class Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/server/BackgroundRefreshRunner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1733
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/server/BackgroundRefreshRunner;
    .locals 14

    .prologue
    .line 1737
    new-instance v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/cache/DataCache;

    const-class v3, Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/auth/AuthDataStore;

    const-class v4, Lcom/facebook/orca/database/DbCache;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/database/DbCache;

    const-class v5, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v6, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    const-class v7, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v8, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v7, v8}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v8, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/common/util/Clock;

    const-class v9, Ljava/lang/Boolean;

    const-class v10, Lcom/facebook/orca/annotations/DisableBackgroundOperations;

    invoke-virtual {p0, v9, v10}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-class v10, Lcom/facebook/orca/threads/FolderName;

    const-class v11, Lcom/facebook/orca/annotations/CurrentFolderName;

    invoke-virtual {p0, v10, v11}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v10

    const-class v11, Ljava/lang/Boolean;

    const-class v12, Lcom/facebook/orca/annotations/IsLastActiveEnabled;

    invoke-virtual {p0, v11, v12}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v11

    const-class v12, Ljava/lang/Boolean;

    const-class v13, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-virtual {p0, v12, v13}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lcom/facebook/orca/server/BackgroundRefreshRunner;-><init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/auth/AuthDataStore;Lcom/facebook/orca/database/DbCache;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/database/DbUsersPropertyUtil;Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/common/util/Clock;ZLjavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1733
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;->a()Lcom/facebook/orca/server/BackgroundRefreshRunner;

    move-result-object v0

    return-object v0
.end method
