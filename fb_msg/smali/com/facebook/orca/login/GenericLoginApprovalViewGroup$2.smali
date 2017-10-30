.class Lcom/facebook/orca/login/GenericLoginApprovalViewGroup$2;
.super Ljava/lang/Object;
.source "GenericLoginApprovalViewGroup.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup$2;->a:Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup$2;->a:Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;

    #calls: Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->onLoginClick()V
    invoke-static {v0}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->access$000(Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;)V

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
