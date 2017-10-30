.class public Lcom/facebook/orca/nux/NUXActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "NUXActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# static fields
.field private static final n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private o:Lcom/facebook/orca/nux/NuxIntroView;

.field private p:Lcom/facebook/orca/nux/OrcaNuxManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/orca/nux/NUXActivity;

    sput-object v0, Lcom/facebook/orca/nux/NUXActivity;->n:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/nux/NUXActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/orca/nux/NUXActivity;->j()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/nux/NUXActivity;->o:Lcom/facebook/orca/nux/NuxIntroView;

    new-instance v1, Lcom/facebook/orca/nux/NUXActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/nux/NUXActivity$1;-><init>(Lcom/facebook/orca/nux/NUXActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/nux/NuxIntroView;->setOnNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method private j()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/facebook/orca/nux/NUXActivity;->k()V

    .line 80
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/nux/NUXActivity;->p:Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/OrcaNuxManager;->h()V

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NUXActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/facebook/orca/nux/NUXActivity;->finish()V

    .line 87
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/nux/NUXActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 60
    const-class v1, Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/nux/OrcaNuxManager;

    iput-object v0, p0, Lcom/facebook/orca/nux/NUXActivity;->p:Lcom/facebook/orca/nux/OrcaNuxManager;

    .line 62
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 64
    sget v0, Lcom/facebook/R$id;->nux_intro:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NUXActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/nux/NuxIntroView;

    iput-object v0, p0, Lcom/facebook/orca/nux/NUXActivity;->o:Lcom/facebook/orca/nux/NuxIntroView;

    .line 65
    invoke-direct {p0}, Lcom/facebook/orca/nux/NUXActivity;->i()V

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/nux/NUXActivity;->o:Lcom/facebook/orca/nux/NuxIntroView;

    invoke-virtual {v0}, Lcom/facebook/orca/nux/NuxIntroView;->d()V

    .line 67
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 54
    sget v0, Lcom/facebook/R$layout;->nux:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/nux/NUXActivity;->setContentView(I)V

    .line 55
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "nux"

    return-object v0
.end method
