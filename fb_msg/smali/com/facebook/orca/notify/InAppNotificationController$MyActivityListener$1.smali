.class Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener$1;
.super Ljava/lang/Object;
.source "InAppNotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;


# direct methods
.method constructor <init>(Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener$1;->b:Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    iput-object p2, p0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener$1;->b:Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    iget-object v0, v0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener$1;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController;Landroid/view/View;)V

    .line 289
    return-void
.end method
