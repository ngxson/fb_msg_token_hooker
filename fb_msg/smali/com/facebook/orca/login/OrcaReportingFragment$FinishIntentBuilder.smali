.class public Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;
.super Ljava/lang/Object;
.source "OrcaReportingFragment.java"


# instance fields
.field a:Landroid/content/Intent;

.field final synthetic b:Lcom/facebook/orca/login/OrcaReportingFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/login/OrcaReportingFragment;Ljava/lang/Class;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/orca/login/OrcaReportingFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;->b:Lcom/facebook/orca/login/OrcaReportingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.fragment.FRAGMENT_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;->a:Landroid/content/Intent;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.fragment.PUSH_BACK_STACK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    return-object p0
.end method

.method public b()Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;->a:Landroid/content/Intent;

    const-string v1, "com.facebook.fragment.CLEAR_BACK_STACK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    return-object p0
.end method

.method public c()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;->a:Landroid/content/Intent;

    return-object v0
.end method
