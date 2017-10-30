.class Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup$3;
.super Ljava/lang/Object;
.source "GenericPasswordCredentialsViewGroup.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup$3;->a:Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;

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
    .line 114
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup$3;->a:Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;

    #calls: Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->onLoginClick()V
    invoke-static {v0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->access$000(Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;)V

    .line 116
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
