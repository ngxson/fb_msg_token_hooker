.class public Lcom/facebook/orca/app/SplashScreenActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "SplashScreenActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# annotations
.annotation runtime Lcom/facebook/orca/annotations/AppInitializationNotRequired;
.end annotation

.annotation runtime Lcom/facebook/orca/annotations/AuthNotRequired;
.end annotation


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
.field private o:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/facebook/orca/app/SplashScreenActivity;

    sput-object v0, Lcom/facebook/orca/app/SplashScreenActivity;->n:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/SplashScreenActivity;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/orca/app/SplashScreenActivity;->i()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private i()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/app/SplashScreenActivity;->o:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/app/SplashScreenActivity;->o:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x10000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/facebook/orca/app/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    const-string v1, "return_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/facebook/orca/app/SplashScreenActivity;->o:Landroid/content/Intent;

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/app/SplashScreenActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 43
    const-class v1, Lcom/facebook/orca/app/AppInitLock;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/AppInitLock;

    .line 45
    invoke-virtual {v0}, Lcom/facebook/orca/app/AppInitLock;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/app/SplashScreenActivity;->i()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/facebook/orca/app/SplashScreenActivity;->finish()V

    .line 59
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v1, Lcom/facebook/orca/app/SplashScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/SplashScreenActivity$1;-><init>(Lcom/facebook/orca/app/SplashScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/AppInitLock;->a(Lcom/facebook/orca/app/AppInitLock$Listener;)V

    .line 57
    sget v0, Lcom/facebook/R$layout;->splash_screen:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/SplashScreenActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "splash_screen"

    return-object v0
.end method
