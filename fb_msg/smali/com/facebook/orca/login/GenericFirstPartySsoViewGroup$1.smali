.class Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup$1;
.super Ljava/lang/Object;
.source "GenericFirstPartySsoViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup$1;->a:Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup$1;->a:Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;

    #calls: Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->onLoginClicked()V
    invoke-static {v0}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->access$000(Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;)V

    .line 86
    return-void
.end method
