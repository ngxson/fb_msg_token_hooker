.class Lcom/facebook/orca/database/UsersDbModule$UsersDatabaseSupplierProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "UsersDbModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/UsersDatabaseSupplier;",
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
    .line 75
    iput-object p1, p0, Lcom/facebook/orca/database/UsersDbModule$UsersDatabaseSupplierProvider;->a:Lcom/facebook/orca/database/UsersDbModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/database/UsersDbModule;Lcom/facebook/orca/database/UsersDbModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/UsersDbModule$UsersDatabaseSupplierProvider;-><init>(Lcom/facebook/orca/database/UsersDbModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/UsersDatabaseSupplier;
    .locals 4

    .prologue
    .line 79
    new-instance v3, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    const-class v0, Landroid/content/Context;

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/database/UsersDbModule$UsersDatabaseSupplierProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/database/UsersDbModule$UsersDatabaseSupplierProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    const-class v2, Lcom/facebook/orca/database/UsersDbSchemaPart;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/database/UsersDbModule$UsersDatabaseSupplierProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/database/UsersDbSchemaPart;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/database/UsersDatabaseSupplier;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/database/UsersDbSchemaPart;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/facebook/orca/database/UsersDbModule$UsersDatabaseSupplierProvider;->a()Lcom/facebook/orca/database/UsersDatabaseSupplier;

    move-result-object v0

    return-object v0
.end method
