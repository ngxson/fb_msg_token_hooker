.class Lcom/facebook/orca/NuiActivity$1;
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
    .line 33
    iput-object p1, p0, Lcom/facebook/orca/NuiActivity$1;->this$0:Lcom/facebook/orca/NuiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/NuiActivity$1;->this$0:Lcom/facebook/orca/NuiActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/NuiActivity;->copyToken()V

    .line 37
    return-void
.end method
