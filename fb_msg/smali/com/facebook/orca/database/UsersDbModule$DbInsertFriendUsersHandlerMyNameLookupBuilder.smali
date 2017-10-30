.class Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerMyNameLookupBuilder;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "UsersDbModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;",
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
    .line 55
    iput-object p1, p0, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerMyNameLookupBuilder;->a:Lcom/facebook/orca/database/UsersDbModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/database/UsersDbModule;Lcom/facebook/orca/database/UsersDbModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerMyNameLookupBuilder;-><init>(Lcom/facebook/orca/database/UsersDbModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;
    .locals 3

    .prologue
    .line 60
    new-instance v2, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    const-class v0, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerMyNameLookupBuilder;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    const-class v1, Lcom/facebook/orca/common/names/NameSplitter;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerMyNameLookupBuilder;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/names/NameSplitter;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;-><init>(Lcom/facebook/orca/database/UsersDatabaseSupplier;Lcom/facebook/orca/common/names/NameSplitter;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerMyNameLookupBuilder;->a()Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    move-result-object v0

    return-object v0
.end method
