.class Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "UsersDbModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/DbInsertFriendUsersHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/database/UsersDbModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/database/UsersDbModule;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerProvider;->a:Lcom/facebook/orca/database/UsersDbModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/database/UsersDbModule;Lcom/facebook/orca/database/UsersDbModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerProvider;-><init>(Lcom/facebook/orca/database/UsersDbModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/DbInsertFriendUsersHandler;
    .locals 8

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    const-class v1, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    const-class v2, Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/users/UserSerialization;

    const-class v3, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    const-class v4, Lcom/facebook/orca/common/names/NameSplitter;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/common/names/NameSplitter;

    const-class v5, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    const-class v6, Lcom/facebook/orca/users/User;

    const-class v7, Lcom/facebook/orca/annotations/MeUser;

    invoke-virtual {p0, v6, v7}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;-><init>(Lcom/facebook/orca/database/UsersDatabaseSupplier;Lcom/facebook/orca/users/UserSerialization;Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;Lcom/facebook/orca/common/names/NameSplitter;Lcom/facebook/orca/database/DbUsersPropertyUtil;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerProvider;->a()Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    move-result-object v0

    return-object v0
.end method
