.class Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider$1;
.super Lcom/google/inject/TypeLiteral;
.source "OrcaPushModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/TypeLiteral",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/facebook/orca/push/PushHandler;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider$1;->a:Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
