.class Lcom/facebook/orca/push/c2dm/C2DMReceiver$1;
.super Lcom/google/inject/TypeLiteral;
.source "C2DMReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/TypeLiteral",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/facebook/orca/push/c2dm/C2DMPushHandler;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/c2dm/C2DMReceiver;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/c2dm/C2DMReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver$1;->a:Lcom/facebook/orca/push/c2dm/C2DMReceiver;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
