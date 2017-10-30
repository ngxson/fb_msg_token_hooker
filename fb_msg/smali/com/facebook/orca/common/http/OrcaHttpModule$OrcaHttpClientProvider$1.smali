.class Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider$1;
.super Lcom/google/inject/TypeLiteral;
.source "OrcaHttpModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/TypeLiteral",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/facebook/orca/common/http/OrcaHttpClientObserver;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider$1;->a:Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
