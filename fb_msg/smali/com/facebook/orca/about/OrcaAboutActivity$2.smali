.class Lcom/facebook/orca/about/OrcaAboutActivity$2;
.super Ljava/lang/Object;
.source "OrcaAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/about/OrcaAboutActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/about/OrcaAboutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/facebook/orca/about/OrcaAboutActivity$2;->a:Lcom/facebook/orca/about/OrcaAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/orca/about/OrcaAboutActivity$2;->a:Lcom/facebook/orca/about/OrcaAboutActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.facebook.com/terms.php"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/about/OrcaAboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method
