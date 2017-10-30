.class public Lcom/facebook/orca/app/AppInitializationActivityHelper;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "AppInitializationActivityHelper.java"


# instance fields
.field private final a:Lcom/facebook/orca/app/AppInitLock;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/AppInitLock;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/orca/app/AppInitializationActivityHelper;->a:Lcom/facebook/orca/app/AppInitLock;

    .line 20
    return-void
.end method


# virtual methods
.method public d(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/app/AppInitializationActivityHelper;->a:Lcom/facebook/orca/app/AppInitLock;

    invoke-virtual {v0}, Lcom/facebook/orca/app/AppInitLock;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/AppInitializationNotRequired;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/app/SplashScreenActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    const-string v2, "return_intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
