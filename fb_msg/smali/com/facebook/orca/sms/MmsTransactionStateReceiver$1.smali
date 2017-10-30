.class Lcom/facebook/orca/sms/MmsTransactionStateReceiver$1;
.super Lcom/google/inject/TypeLiteral;
.source "MmsTransactionStateReceiver.java"


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
.field final synthetic a:Lcom/facebook/orca/sms/MmsTransactionStateReceiver;


# direct methods
.method constructor <init>(Lcom/facebook/orca/sms/MmsTransactionStateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsTransactionStateReceiver$1;->a:Lcom/facebook/orca/sms/MmsTransactionStateReceiver;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
