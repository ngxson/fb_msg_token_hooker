.class Lcom/facebook/orca/notify/InAppNotificationController$1;
.super Ljava/lang/Object;
.source "InAppNotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threads/Message;

.field final synthetic b:Lcom/facebook/orca/notify/InAppNotificationController;


# direct methods
.method constructor <init>(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/threads/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController$1;->b:Lcom/facebook/orca/notify/InAppNotificationController;

    iput-object p2, p0, Lcom/facebook/orca/notify/InAppNotificationController$1;->a:Lcom/facebook/orca/threads/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController$1;->b:Lcom/facebook/orca/notify/InAppNotificationController;

    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController$1;->a:Lcom/facebook/orca/threads/Message;

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/threads/Message;)V

    .line 83
    return-void
.end method
