.class Lcom/facebook/orca/app/MessagesModule$AuthTokenStringProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Ljava/lang/String;",
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
    .line 2040
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$AuthTokenStringProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2040
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$AuthTokenStringProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2044
    const-class v0, Lcom/facebook/orca/auth/FacebookCredentials;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$AuthTokenStringProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/FacebookCredentials;

    .line 2045
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2040
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$AuthTokenStringProvider;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
