.class public Lcom/facebook/orca/activity/MessengerLogoutHandler;
.super Ljava/lang/Object;
.source "MessengerLogoutHandler.java"

# interfaces
.implements Lcom/facebook/orca/auth/LogoutHandler;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/orca/activity/MessengerLogoutHandler;->a:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/activity/MessengerLogoutHandler;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    const-string v1, "orca:loginparam:LoginFragmentState"

    const-class v2, Lcom/facebook/orca/login/LogoutFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    iget-object v1, p0, Lcom/facebook/orca/activity/MessengerLogoutHandler;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method
