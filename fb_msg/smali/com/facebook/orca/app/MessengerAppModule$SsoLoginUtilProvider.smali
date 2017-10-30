.class Lcom/facebook/orca/app/MessengerAppModule$SsoLoginUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/login/SsoLoginUtil;",
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
    .line 531
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$SsoLoginUtilProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$SsoLoginUtilProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/login/SsoLoginUtil;
    .locals 4

    .prologue
    .line 535
    new-instance v1, Lcom/facebook/orca/login/SsoLoginUtil;

    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsFirstPartySsoEnabled;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/orca/app/MessengerAppModule$SsoLoginUtilProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v2

    const-class v0, Lcom/facebook/orca/app/IntendedAudience;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessengerAppModule$SsoLoginUtilProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    const-class v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessengerAppModule$SsoLoginUtilProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/orca/login/SsoLoginUtil;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$SsoLoginUtilProvider;->a()Lcom/facebook/orca/login/SsoLoginUtil;

    move-result-object v0

    return-object v0
.end method
