.class Lcom/facebook/orca/server/OrcaService$1;
.super Lcom/google/inject/TypeLiteral;
.source "OrcaService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/TypeLiteral",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/facebook/orca/server/OrcaServiceQueueHook;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/OrcaService;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/OrcaService;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaService$1;->a:Lcom/facebook/orca/server/OrcaService;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
