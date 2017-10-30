.class public Lcom/facebook/orca/activity/MessengerAboutHandler;
.super Ljava/lang/Object;
.source "MessengerAboutHandler.java"

# interfaces
.implements Lcom/facebook/orca/prefs/AboutHandler;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/activity/MessengerAboutHandler;->a:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/activity/MessengerAboutHandler;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/about/OrcaAboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    iget-object v1, p0, Lcom/facebook/orca/activity/MessengerAboutHandler;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method
