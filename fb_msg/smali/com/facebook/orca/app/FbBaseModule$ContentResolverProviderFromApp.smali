.class Lcom/facebook/orca/app/FbBaseModule$ContentResolverProviderFromApp;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Landroid/content/ContentResolver;",
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
    .line 362
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$ContentResolverProviderFromApp;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$ContentResolverProviderFromApp;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/facebook/orca/app/FbBaseModule$ContentResolverProviderFromApp;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-static {v0}, Lcom/facebook/orca/app/FbBaseModule;->b(Lcom/facebook/orca/app/FbBaseModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$ContentResolverProviderFromApp;->a()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method
