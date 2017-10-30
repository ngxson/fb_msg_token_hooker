.class Lcom/facebook/orca/app/UserInteractionController$1;
.super Ljava/lang/Object;
.source "UserInteractionController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/UserInteractionController;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/UserInteractionController;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/orca/app/UserInteractionController$1;->a:Lcom/facebook/orca/app/UserInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/app/UserInteractionController$1;->a:Lcom/facebook/orca/app/UserInteractionController;

    invoke-virtual {v0}, Lcom/facebook/orca/app/UserInteractionController;->d()V

    .line 45
    const/4 v0, 0x1

    return v0
.end method
