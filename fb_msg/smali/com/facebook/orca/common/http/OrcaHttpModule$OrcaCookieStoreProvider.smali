.class Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaCookieStoreProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaHttpModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/http/OrcaCookieStore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/http/OrcaHttpModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaCookieStoreProvider;->a:Lcom/facebook/orca/common/http/OrcaHttpModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;Lcom/facebook/orca/common/http/OrcaHttpModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaCookieStoreProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/http/OrcaCookieStore;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/facebook/orca/common/http/OrcaCookieStore;

    invoke-direct {v0}, Lcom/facebook/orca/common/http/OrcaCookieStore;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaCookieStoreProvider;->a()Lcom/facebook/orca/common/http/OrcaCookieStore;

    move-result-object v0

    return-object v0
.end method
