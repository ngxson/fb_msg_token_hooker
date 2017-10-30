.class Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup$1;
.super Ljava/lang/Object;
.source "GenericPasswordCredentialsViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup$1;->a:Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup$1;->a:Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;

    #calls: Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->onLoginClick()V
    invoke-static {v0}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->access$000(Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;)V

    .line 102
    return-void
.end method
