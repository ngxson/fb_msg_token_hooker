.class Lcom/facebook/orca/app/MessagesModule$OrcaNuxControllerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/nux/OrcaNuxManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2212
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaNuxControllerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2212
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OrcaNuxControllerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/nux/OrcaNuxManager;
    .locals 5

    .prologue
    .line 2216
    new-instance v3, Lcom/facebook/orca/nux/OrcaNuxManager;

    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$OrcaNuxControllerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsClientSmsPermitted;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaNuxControllerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v4

    const-class v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaNuxControllerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v2, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaNuxControllerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/prefs/UiCounters;

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/facebook/orca/nux/OrcaNuxManager;-><init>(Lcom/facebook/orca/app/OrcaAppType;Ljavax/inject/Provider;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/prefs/UiCounters;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2212
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$OrcaNuxControllerProvider;->a()Lcom/facebook/orca/nux/OrcaNuxManager;

    move-result-object v0

    return-object v0
.end method
