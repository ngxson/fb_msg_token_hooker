.class public Lcom/facebook/orca/app/UserInteractionController$ActivityListener;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "UserInteractionController.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/UserInteractionController;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/UserInteractionController;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/facebook/orca/app/UserInteractionController$ActivityListener;->a:Lcom/facebook/orca/app/UserInteractionController;

    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/orca/app/UserInteractionController$ActivityListener;->a:Lcom/facebook/orca/app/UserInteractionController;

    invoke-static {v0}, Lcom/facebook/orca/app/UserInteractionController;->a(Lcom/facebook/orca/app/UserInteractionController;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 125
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 128
    const-string v2, "UserInteraction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " was still marked as interacting when its"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " corresponding Activity was paused"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/app/UserInteractionController$ActivityListener;->a:Lcom/facebook/orca/app/UserInteractionController;

    invoke-virtual {v0}, Lcom/facebook/orca/app/UserInteractionController;->d()V

    .line 134
    return-void
.end method
