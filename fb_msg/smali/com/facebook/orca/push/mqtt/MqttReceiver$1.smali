.class Lcom/facebook/orca/push/mqtt/MqttReceiver$1;
.super Lcom/google/inject/TypeLiteral;
.source "MqttReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/TypeLiteral",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/facebook/orca/push/mqtt/MqttPushHandler;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/mqtt/MqttReceiver;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/MqttReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver$1;->a:Lcom/facebook/orca/push/mqtt/MqttReceiver;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
