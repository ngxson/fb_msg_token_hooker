.class public Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "FPSController.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/diagnostics/FPSController;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/diagnostics/FPSController;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;->a:Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;->a:Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-static {v0, p1}, Lcom/facebook/orca/common/diagnostics/FPSController;->a(Lcom/facebook/orca/common/diagnostics/FPSController;Landroid/app/Activity;)Landroid/app/Activity;

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;->a:Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-static {v0}, Lcom/facebook/orca/common/diagnostics/FPSController;->a(Lcom/facebook/orca/common/diagnostics/FPSController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;->a:Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-static {v0}, Lcom/facebook/orca/common/diagnostics/FPSController;->b(Lcom/facebook/orca/common/diagnostics/FPSController;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;->a:Lcom/facebook/orca/common/diagnostics/FPSController;

    invoke-static {v0}, Lcom/facebook/orca/common/diagnostics/FPSController;->c(Lcom/facebook/orca/common/diagnostics/FPSController;)V

    goto :goto_0
.end method
