.class Lcom/facebook/orca/NuiActivity$2;
.super Ljava/lang/Object;
.source "NuiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/orca/NuiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/orca/NuiActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/NuiActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/orca/NuiActivity$2;->this$0:Lcom/facebook/orca/NuiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/NuiActivity$2;->this$0:Lcom/facebook/orca/NuiActivity;

    invoke-virtual {v1}, Lcom/facebook/orca/NuiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/facebook/orca/NuiActivity$2;->this$0:Lcom/facebook/orca/NuiActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/NuiActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method
