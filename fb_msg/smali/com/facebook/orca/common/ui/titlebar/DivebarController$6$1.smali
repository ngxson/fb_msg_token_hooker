.class Lcom/facebook/orca/common/ui/titlebar/DivebarController$6$1;
.super Ljava/lang/Object;
.source "DivebarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/titlebar/DivebarController$6;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/titlebar/DivebarController$6;)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$6$1;->a:Lcom/facebook/orca/common/ui/titlebar/DivebarController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 573
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$6$1;->a:Lcom/facebook/orca/common/ui/titlebar/DivebarController$6;

    iget-object v0, v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$6;->a:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(Lcom/facebook/orca/common/ui/titlebar/DivebarController;JLjava/lang/Runnable;)V

    .line 574
    return-void
.end method
