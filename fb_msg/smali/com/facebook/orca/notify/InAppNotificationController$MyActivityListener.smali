.class public Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "InAppNotificationController.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/notify/InAppNotificationController;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/notify/InAppNotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-static {v0, p1}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController;Landroid/app/Activity;)Landroid/app/Activity;

    .line 274
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-static {v0, v2}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController;Landroid/app/Activity;)Landroid/app/Activity;

    .line 279
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-static {v0}, Lcom/facebook/orca/notify/InAppNotificationController;->c(Lcom/facebook/orca/notify/InAppNotificationController;)Lcom/facebook/orca/notify/InAppNotificationView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-static {v0}, Lcom/facebook/orca/notify/InAppNotificationController;->c(Lcom/facebook/orca/notify/InAppNotificationController;)Lcom/facebook/orca/notify/InAppNotificationView;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-static {v1, v2}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/notify/InAppNotificationView;)Lcom/facebook/orca/notify/InAppNotificationView;

    .line 285
    new-instance v1, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener$1;-><init>(Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;->a:Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-static {v0}, Lcom/facebook/orca/notify/InAppNotificationController;->d(Lcom/facebook/orca/notify/InAppNotificationController;)V

    .line 293
    return-void
.end method
