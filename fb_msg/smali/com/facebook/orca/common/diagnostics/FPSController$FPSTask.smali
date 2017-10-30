.class Lcom/facebook/orca/common/diagnostics/FPSController$FPSTask;
.super Landroid/os/AsyncTask;
.source "FPSController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/diagnostics/FPSController;


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter

    .prologue
    .line 140
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController$FPSTask;->a:Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-static {v0}, Lcom/facebook/orca/common/diagnostics/FPSController;->d(Lcom/facebook/orca/common/diagnostics/FPSController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController$FPSTask;->a:Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-static {v0}, Lcom/facebook/orca/common/diagnostics/FPSController;->e(Lcom/facebook/orca/common/diagnostics/FPSController;)Landroid/app/Activity;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController$FPSTask;->a:Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-static {v0}, Lcom/facebook/orca/common/diagnostics/FPSController;->f(Lcom/facebook/orca/common/diagnostics/FPSController;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/diagnostics/FPSController$FPSTask;->a:Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-static {v1}, Lcom/facebook/orca/common/diagnostics/FPSController;->e(Lcom/facebook/orca/common/diagnostics/FPSController;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/diagnostics/FPSView;

    .line 146
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/facebook/orca/common/diagnostics/FPSController$FPSTask;->a:Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-static {v1}, Lcom/facebook/orca/common/diagnostics/FPSController;->g(Lcom/facebook/orca/common/diagnostics/FPSController;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/facebook/orca/common/diagnostics/FPSController$FPSTask;->a:Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-static {v1}, Lcom/facebook/orca/common/diagnostics/FPSController;->g(Lcom/facebook/orca/common/diagnostics/FPSController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/common/diagnostics/FPSController$FPSTask;->a:Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-static {v2}, Lcom/facebook/orca/common/diagnostics/FPSController;->g(Lcom/facebook/orca/common/diagnostics/FPSController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/facebook/orca/common/diagnostics/FPSView;->getFPS()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/common/diagnostics/FPSView;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0

    .line 156
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 136
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/common/diagnostics/FPSController$FPSTask;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
