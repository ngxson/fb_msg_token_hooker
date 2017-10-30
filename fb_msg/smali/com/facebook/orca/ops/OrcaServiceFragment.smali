.class public Lcom/facebook/orca/ops/OrcaServiceFragment;
.super Landroid/support/v4/app/Fragment;
.source "OrcaServiceFragment.java"


# instance fields
.field private a:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private b:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

.field private c:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

.field private d:Lcom/facebook/orca/ops/OperationProgressIndicator;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->f()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 201
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 202
    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-direct {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;-><init>()V

    .line 204
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 205
    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 206
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 208
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/support/v4/app/NestedFragment;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/support/v4/app/NestedFragment;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 220
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 221
    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-direct {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;-><init>()V

    .line 223
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 224
    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 225
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 227
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceFragment;)Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->b:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/ops/OrcaServiceFragment;)Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->c:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 34
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->c()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 35
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->e:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->d:Lcom/facebook/orca/ops/OperationProgressIndicator;

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->b:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    .line 126
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->c:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    .line 144
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->e:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->f:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->g:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Z)V

    .line 41
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    new-instance v1, Lcom/facebook/orca/ops/OrcaServiceFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/ops/OrcaServiceFragment$1;-><init>(Lcom/facebook/orca/ops/OrcaServiceFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    new-instance v1, Lcom/facebook/orca/ops/OrcaServiceFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/ops/OrcaServiceFragment$2;-><init>(Lcom/facebook/orca/ops/OrcaServiceFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;)V

    .line 64
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Landroid/os/Bundle;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->d:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 68
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->d:Lcom/facebook/orca/ops/OperationProgressIndicator;

    .line 69
    iput-boolean v2, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->e:Z

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->f:Ljava/lang/String;

    .line 74
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->g:Landroid/os/Bundle;

    .line 76
    :cond_1
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 82
    iput-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->b:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    .line 83
    iput-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment;->c:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    .line 84
    return-void
.end method
