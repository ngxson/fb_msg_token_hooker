.class Lcom/facebook/orca/app/MessengerAppModule$OrcaFirstInstallInitializerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/OrcaFirstInstallInitializer;",
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
    .line 469
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$OrcaFirstInstallInitializerProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$OrcaFirstInstallInitializerProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/OrcaFirstInstallInitializer;
    .locals 3

    .prologue
    .line 474
    new-instance v1, Lcom/facebook/orca/app/OrcaFirstInstallInitializer;

    iget-object v0, p0, Lcom/facebook/orca/app/MessengerAppModule$OrcaFirstInstallInitializerProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/facebook/orca/app/MessengerAppModule;)Landroid/app/Application;

    move-result-object v2

    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessengerAppModule$OrcaFirstInstallInitializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/app/OrcaFirstInstallInitializer;-><init>(Landroid/content/Context;Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$OrcaFirstInstallInitializerProvider;->a()Lcom/facebook/orca/app/OrcaFirstInstallInitializer;

    move-result-object v0

    return-object v0
.end method
