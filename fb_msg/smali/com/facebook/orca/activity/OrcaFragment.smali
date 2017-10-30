.class public Lcom/facebook/orca/activity/OrcaFragment;
.super Landroid/support/v4/app/NestedFragment;
.source "OrcaFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/NestedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public G()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragment;->n()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 28
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 29
    return-void
.end method

.method protected b(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragment;->n()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 40
    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-direct {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;-><init>()V

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/activity/OrcaFragment;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 44
    :cond_0
    return-object v0
.end method

.method protected f(I)Landroid/view/View;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/facebook/orca/activity/OrcaFragment;->u()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
