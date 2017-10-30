.class Lcom/facebook/orca/push/sms/SmsReceiver$1;
.super Lcom/google/inject/TypeLiteral;
.source "SmsReceiver.java"


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
.field final synthetic a:Lcom/facebook/orca/push/sms/SmsReceiver;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/sms/SmsReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/orca/push/sms/SmsReceiver$1;->a:Lcom/facebook/orca/push/sms/SmsReceiver;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
