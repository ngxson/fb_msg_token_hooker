.class public Lcom/facebook/fragment/NavigableFragmentController;
.super Landroid/support/v4/app/NestedFragment;
.source "NavigableFragmentController.java"

# interfaces
.implements Lcom/facebook/fragment/ReportingFragment;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/support/v4/app/Fragment;

.field private c:Lcom/facebook/fragment/ReportingFragment$Listener;

.field private d:Lcom/facebook/fragment/ReportingFragment$Listener;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/facebook/fragment/NavigableFragmentController;

    sput-object v0, Lcom/facebook/fragment/NavigableFragmentController;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/NestedFragment;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->f:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/facebook/fragment/NavigableFragmentController;->b(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter

    .prologue
    .line 229
    move-object v0, p1

    check-cast v0, Lcom/facebook/fragment/ReportingFragment;

    iget-object v1, p0, Lcom/facebook/fragment/NavigableFragmentController;->c:Lcom/facebook/fragment/ReportingFragment$Listener;

    invoke-interface {v0, v1}, Lcom/facebook/fragment/ReportingFragment;->a(Lcom/facebook/fragment/ReportingFragment$Listener;)V

    .line 230
    iget-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method static synthetic a(Lcom/facebook/fragment/NavigableFragmentController;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/fragment/NavigableFragmentController;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/fragment/NavigableFragmentController;Lcom/facebook/fragment/ReportingFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/facebook/fragment/NavigableFragmentController;->a(Lcom/facebook/fragment/ReportingFragment;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/facebook/fragment/ReportingFragment;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 147
    if-eqz p1, :cond_1

    .line 148
    sget-object v1, Lcom/facebook/fragment/NavigableFragmentController;->a:Ljava/lang/Class;

    const-string v2, "Finished fragment \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :goto_0
    iget-boolean v1, p0, Lcom/facebook/fragment/NavigableFragmentController;->f:Z

    if-eqz v1, :cond_2

    .line 178
    :cond_0
    :goto_1
    return-void

    .line 150
    :cond_1
    sget-object v1, Lcom/facebook/fragment/NavigableFragmentController;->a:Ljava/lang/Class;

    const-string v2, "Starting Navigable Fragment Controller"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_2
    const-string v1, "com.facebook.fragment.FRAGMENT_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 163
    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 165
    if-nez v3, :cond_3

    move v1, v0

    .line 167
    :goto_2
    if-nez v3, :cond_4

    .line 170
    :goto_3
    const-string v3, "com.facebook.fragment.PUSH_BACK_STACK"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 171
    const-string v3, "com.facebook.fragment.CLEAR_BACK_STACK"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/facebook/fragment/NavigableFragmentController;->a(Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    goto :goto_1

    .line 165
    :cond_3
    const-string v1, "com.facebook.fragment.PUSH_BACK_STACK"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_2

    .line 167
    :cond_4
    const-string v4, "com.facebook.fragment.CLEAR_BACK_STACK"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_3

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->d:Lcom/facebook/fragment/ReportingFragment$Listener;

    invoke-interface {v0, p0, p2}, Lcom/facebook/fragment/ReportingFragment$Listener;->a(Lcom/facebook/fragment/ReportingFragment;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 196
    sget-object v0, Lcom/facebook/fragment/NavigableFragmentController;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting controlled fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/facebook/fragment/NavigableFragmentController;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->b:Landroid/support/v4/app/Fragment;

    .line 198
    iget-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/Fragment;->f(Landroid/os/Bundle;)V

    .line 200
    if-eqz p4, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/facebook/fragment/NavigableFragmentController;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;I)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fragment/NavigableFragmentController;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/facebook/R$id;->login_fragment_controller_host:I

    iget-object v2, p0, Lcom/facebook/fragment/NavigableFragmentController;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 207
    if-eqz p3, :cond_1

    .line 208
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->a(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 211
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 212
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/facebook/fragment/NavigableFragmentController;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0, v0}, Lcom/facebook/fragment/NavigableFragmentController;->a(Landroid/support/v4/app/Fragment;)V

    .line 244
    :cond_0
    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->d:Lcom/facebook/fragment/ReportingFragment$Listener;

    invoke-interface {v0, p1}, Lcom/facebook/fragment/ReportingFragment$Listener;->a(Landroid/os/Bundle;)V

    .line 186
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    sget v0, Lcom/facebook/R$layout;->login_fragment_controller:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->f:Z

    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/NestedFragment;->a(Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->e:Ljava/util/Map;

    .line 61
    new-instance v0, Lcom/facebook/fragment/NavigableFragmentController$1;

    invoke-direct {v0, p0}, Lcom/facebook/fragment/NavigableFragmentController$1;-><init>(Lcom/facebook/fragment/NavigableFragmentController;)V

    iput-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->c:Lcom/facebook/fragment/ReportingFragment$Listener;

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/facebook/fragment/NavigableFragmentController;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/facebook/R$id;->login_fragment_controller_host:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->b:Landroid/support/v4/app/Fragment;

    .line 78
    iget-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->b:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->b:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v0}, Lcom/facebook/fragment/NavigableFragmentController;->a(Landroid/support/v4/app/Fragment;)V

    .line 82
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/fragment/ReportingFragment$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/fragment/NavigableFragmentController;->d:Lcom/facebook/fragment/ReportingFragment$Listener;

    .line 53
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/facebook/fragment/NavigableFragmentController;->a(Lcom/facebook/fragment/ReportingFragment;Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->b:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->f:Z

    .line 92
    invoke-super {p0}, Landroid/support/v4/app/NestedFragment;->e()V

    .line 93
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->f:Z

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/NestedFragment;->e(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/fragment/NavigableFragmentController;->f:Z

    .line 104
    invoke-super {p0}, Landroid/support/v4/app/NestedFragment;->v()V

    .line 105
    return-void
.end method
