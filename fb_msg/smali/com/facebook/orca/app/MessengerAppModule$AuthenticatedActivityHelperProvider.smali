.class Lcom/facebook/orca/app/MessengerAppModule$AuthenticatedActivityHelperProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/activity/AuthenticatedActivityHelper;",
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
    .line 369
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$AuthenticatedActivityHelperProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$AuthenticatedActivityHelperProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/activity/AuthenticatedActivityHelper;
    .locals 7

    .prologue
    .line 373
    new-instance v0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule$AuthenticatedActivityHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-class v2, Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessengerAppModule$AuthenticatedActivityHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/auth/AuthDataStore;

    const-class v3, Ljava/lang/Boolean;

    const-class v4, Lcom/facebook/orca/annotations/IsSmsOnlyModeActive;

    invoke-virtual {p0, v3, v4}, Lcom/facebook/orca/app/MessengerAppModule$AuthenticatedActivityHelperProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    const-class v4, Lcom/facebook/orca/app/AppInitLock;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessengerAppModule$AuthenticatedActivityHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/app/AppInitLock;

    const-class v5, Ljava/lang/Boolean;

    const-class v6, Lcom/facebook/orca/annotations/IsSmsOnlyModeEnabled;

    invoke-virtual {p0, v5, v6}, Lcom/facebook/orca/app/MessengerAppModule$AuthenticatedActivityHelperProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;-><init>(Landroid/app/Activity;Lcom/facebook/orca/auth/AuthDataStore;Ljavax/inject/Provider;Lcom/facebook/orca/app/AppInitLock;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$AuthenticatedActivityHelperProvider;->a()Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    move-result-object v0

    return-object v0
.end method
