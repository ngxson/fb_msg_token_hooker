.class Lcom/facebook/orca/app/MessengerAppModule$DefaultSharedPreferencesProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Landroid/content/SharedPreferences;",
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
    .line 349
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$DefaultSharedPreferencesProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$DefaultSharedPreferencesProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/facebook/orca/app/MessengerAppModule$DefaultSharedPreferencesProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/facebook/orca/app/MessengerAppModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$DefaultSharedPreferencesProvider;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
