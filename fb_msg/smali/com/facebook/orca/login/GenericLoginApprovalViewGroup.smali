.class public Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;
.super Lcom/facebook/orca/login/AuthFragmentViewGroup;
.source "GenericLoginApprovalViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/login/AuthFragmentViewGroup",
        "<",
        "Lcom/facebook/orca/login/LoginApprovalFragmentControl;",
        ">;"
    }
.end annotation


# static fields
.field public static final LAYOUT_RESOURCE:Ljava/lang/String; = "orca:authparam:login_approval_layout"


# instance fields
.field private final inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final loginButton:Landroid/widget/Button;

.field private final passwordText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/login/LoginApprovalFragmentControl;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/login/AuthFragmentViewGroup;-><init>(Landroid/content/Context;Lcom/facebook/orca/login/AuthFragmentControlBase;)V

    .line 52
    invoke-virtual {p0}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 53
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 55
    const-string v0, "orca:authparam:login_approval_layout"

    sget v1, Lcom/facebook/R$layout;->orca_login_approval:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->getResource(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->setContentView(I)V

    .line 56
    sget v0, Lcom/facebook/R$id;->password:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->passwordText:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/facebook/R$id;->login:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->loginButton:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->loginButton:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup$1;-><init>(Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->passwordText:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup$2;-><init>(Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->onLoginClick()V

    return-void
.end method

.method public static createParameterBundle(I)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v1, "orca:authparam:login_approval_layout"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    return-object v0
.end method

.method private onLoginClick()V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->passwordText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->control:Lcom/facebook/orca/login/AuthFragmentControlBase;

    check-cast v0, Lcom/facebook/orca/login/LoginApprovalFragmentControl;

    new-instance v2, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    invoke-virtual {p0}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/facebook/R$string;->login_screen_login_progress:I

    invoke-direct {v2, v3, v4}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/login/LoginApprovalFragmentControl;->a(Ljava/lang/String;Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    goto :goto_0
.end method
