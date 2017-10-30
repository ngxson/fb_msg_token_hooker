.class Lcom/facebook/orca/common/ui/titlebar/DivebarController$3;
.super Ljava/lang/Object;
.source "DivebarController.java"

# interfaces
.implements Lcom/facebook/orca/contacts/divebar/DivebarViewListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/titlebar/DivebarController;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$3;->a:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/users/UserWithIdentifier;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$3;->a:Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    invoke-static {v0, p1, p2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(Lcom/facebook/orca/common/ui/titlebar/DivebarController;Lcom/facebook/orca/users/UserWithIdentifier;Z)V

    .line 528
    return-void
.end method
