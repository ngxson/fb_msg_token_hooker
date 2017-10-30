.class Lcom/facebook/orca/database/UsersDbModule$DbUsersPropertyUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "UsersDbModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/DbUsersPropertyUtil;",
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
    .line 67
    iput-object p1, p0, Lcom/facebook/orca/database/UsersDbModule$DbUsersPropertyUtilProvider;->a:Lcom/facebook/orca/database/UsersDbModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/database/UsersDbModule;Lcom/facebook/orca/database/UsersDbModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/UsersDbModule$DbUsersPropertyUtilProvider;-><init>(Lcom/facebook/orca/database/UsersDbModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/DbUsersPropertyUtil;
    .locals 2

    .prologue
    .line 71
    new-instance v1, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    const-class v0, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/UsersDbModule$DbUsersPropertyUtilProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-direct {v1, v0}, Lcom/facebook/orca/database/DbUsersPropertyUtil;-><init>(Lcom/facebook/orca/database/UsersDatabaseSupplier;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/facebook/orca/database/UsersDbModule$DbUsersPropertyUtilProvider;->a()Lcom/facebook/orca/database/DbUsersPropertyUtil;

    move-result-object v0

    return-object v0
.end method
