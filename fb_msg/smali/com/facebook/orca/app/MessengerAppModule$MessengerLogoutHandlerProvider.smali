.class Lcom/facebook/orca/app/MessengerAppModule$MessengerLogoutHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/activity/MessengerLogoutHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessengerAppModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$MessengerLogoutHandlerProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$MessengerLogoutHandlerProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/activity/MessengerLogoutHandler;
    .locals 2

    .prologue
    .line 507
    new-instance v1, Lcom/facebook/orca/activity/MessengerLogoutHandler;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessengerAppModule$MessengerLogoutHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/facebook/orca/activity/MessengerLogoutHandler;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$MessengerLogoutHandlerProvider;->a()Lcom/facebook/orca/activity/MessengerLogoutHandler;

    move-result-object v0

    return-object v0
.end method
