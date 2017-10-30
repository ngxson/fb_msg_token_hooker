.class Lcom/facebook/orca/database/UsersDbModule$UsersDbSchemaPartProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "UsersDbModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/UsersDbSchemaPart;",
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
    .line 87
    iput-object p1, p0, Lcom/facebook/orca/database/UsersDbModule$UsersDbSchemaPartProvider;->a:Lcom/facebook/orca/database/UsersDbModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/database/UsersDbModule;Lcom/facebook/orca/database/UsersDbModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/UsersDbModule$UsersDbSchemaPartProvider;-><init>(Lcom/facebook/orca/database/UsersDbModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/UsersDbSchemaPart;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/facebook/orca/database/UsersDbSchemaPart;

    invoke-direct {v0}, Lcom/facebook/orca/database/UsersDbSchemaPart;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/facebook/orca/database/UsersDbModule$UsersDbSchemaPartProvider;->a()Lcom/facebook/orca/database/UsersDbSchemaPart;

    move-result-object v0

    return-object v0
.end method
