.class Lcom/facebook/orca/app/MessengerAppModule$MessengerForegroundProviderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/notify/MessengerForegroundProvider;",
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
    .line 433
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$MessengerForegroundProviderProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$MessengerForegroundProviderProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/notify/MessengerForegroundProvider;
    .locals 1

    .prologue
    .line 438
    new-instance v0, Lcom/facebook/orca/notify/FbandroidMessagesForegroundProvider;

    invoke-direct {v0}, Lcom/facebook/orca/notify/FbandroidMessagesForegroundProvider;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$MessengerForegroundProviderProvider;->a()Lcom/facebook/orca/notify/MessengerForegroundProvider;

    move-result-object v0

    return-object v0
.end method
