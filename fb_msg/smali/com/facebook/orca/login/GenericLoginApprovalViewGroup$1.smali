.class Lcom/facebook/orca/login/GenericLoginApprovalViewGroup$1;
.super Ljava/lang/Object;
.source "GenericLoginApprovalViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup$1;->a:Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup$1;->a:Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;

    #calls: Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->onLoginClick()V
    invoke-static {v0}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->access$000(Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;)V

    .line 63
    return-void
.end method
