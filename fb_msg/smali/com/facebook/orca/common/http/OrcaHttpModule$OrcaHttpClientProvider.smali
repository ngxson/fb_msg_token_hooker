.class Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaHttpModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/http/OrcaHttpClient;",
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
    .line 116
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;->a:Lcom/facebook/orca/common/http/OrcaHttpModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;Lcom/facebook/orca/common/http/OrcaHttpModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/http/OrcaHttpClient;
    .locals 5

    .prologue
    .line 120
    new-instance v4, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;

    const-class v0, Lorg/apache/http/conn/ClientConnectionManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ClientConnectionManager;

    const-class v1, Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/params/HttpParams;

    const-class v2, Lcom/facebook/orca/common/http/OrcaCookieStore;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/common/http/OrcaCookieStore;

    new-instance v3, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider$1;

    invoke-direct {v3, p0}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider$1;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;)V

    invoke-static {v3}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;Lcom/facebook/orca/common/http/OrcaCookieStore;Ljava/util/Set;)V

    return-object v4
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;->a()Lcom/facebook/orca/common/http/OrcaHttpClient;

    move-result-object v0

    return-object v0
.end method
