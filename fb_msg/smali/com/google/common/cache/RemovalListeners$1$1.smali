.class Lcom/google/common/cache/RemovalListeners$1$1;
.super Ljava/lang/Object;
.source "RemovalListeners.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/common/cache/RemovalNotification;

.field final synthetic b:Lcom/google/common/cache/RemovalListeners$1;


# direct methods
.method constructor <init>(Lcom/google/common/cache/RemovalListeners$1;Lcom/google/common/cache/RemovalNotification;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/common/cache/RemovalListeners$1$1;->b:Lcom/google/common/cache/RemovalListeners$1;

    iput-object p2, p0, Lcom/google/common/cache/RemovalListeners$1$1;->a:Lcom/google/common/cache/RemovalNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/common/cache/RemovalListeners$1$1;->b:Lcom/google/common/cache/RemovalListeners$1;

    iget-object v0, v0, Lcom/google/common/cache/RemovalListeners$1;->b:Lcom/google/common/cache/RemovalListener;

    iget-object v1, p0, Lcom/google/common/cache/RemovalListeners$1$1;->a:Lcom/google/common/cache/RemovalNotification;

    invoke-interface {v0, v1}, Lcom/google/common/cache/RemovalListener;->onRemoval(Lcom/google/common/cache/RemovalNotification;)V

    .line 51
    return-void
.end method
