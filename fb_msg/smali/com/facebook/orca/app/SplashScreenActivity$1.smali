.class Lcom/facebook/orca/app/SplashScreenActivity$1;
.super Lcom/facebook/orca/app/AppInitLock$Listener;
.source "SplashScreenActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/SplashScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/orca/app/SplashScreenActivity$1;->a:Lcom/facebook/orca/app/SplashScreenActivity;

    invoke-direct {p0}, Lcom/facebook/orca/app/AppInitLock$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/app/SplashScreenActivity$1;->a:Lcom/facebook/orca/app/SplashScreenActivity;

    invoke-static {v0}, Lcom/facebook/orca/app/SplashScreenActivity;->a(Lcom/facebook/orca/app/SplashScreenActivity;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/facebook/orca/app/SplashScreenActivity$1;->a:Lcom/facebook/orca/app/SplashScreenActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    iget-object v0, p0, Lcom/facebook/orca/app/SplashScreenActivity$1;->a:Lcom/facebook/orca/app/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/app/SplashScreenActivity;->finish()V

    .line 55
    return-void
.end method
