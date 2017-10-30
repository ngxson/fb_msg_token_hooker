.class Lcom/facebook/orca/app/FbBaseModule$ContextProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/FbBaseModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/FbBaseModule;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 2

    .prologue
    .line 327
    invoke-static {}, Lcom/facebook/orca/inject/SingletonProvider;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Lcom/facebook/orca/inject/ProvisioningException;

    const-string v1, "Should not call getContext in singleton creation. Can lead to memory leaks."

    invoke-direct {v0, v1}, Lcom/facebook/orca/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    invoke-static {}, Lcom/facebook/orca/inject/ReflectionProviderPassThrough;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    new-instance v0, Lcom/facebook/orca/inject/ProvisioningException;

    const-string v1, "Should not call getContext in provider creation. Can lead to memory leaks."

    invoke-direct {v0, v1}, Lcom/facebook/orca/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    invoke-static {}, Lcom/facebook/orca/inject/ThreadLocalProvider;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    new-instance v0, Lcom/facebook/orca/inject/ProvisioningException;

    const-string v1, "Should not call getContext in thread local creation. Can lead to memory leaks."

    invoke-direct {v0, v1}, Lcom/facebook/orca/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-static {v0}, Lcom/facebook/orca/app/FbBaseModule;->a(Lcom/facebook/orca/app/FbBaseModule;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/inject/ContextScope;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$ContextProvider;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
