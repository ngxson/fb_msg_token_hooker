.class Lcom/facebook/orca/app/MessagesModule$UserCredentialsProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/auth/UserTokenCredentials;",
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
    .line 1677
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$UserCredentialsProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1677
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$UserCredentialsProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/auth/UserTokenCredentials;
    .locals 3

    .prologue
    .line 1681
    const-class v0, Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$UserCredentialsProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/AuthDataStore;

    .line 1682
    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 1683
    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->c()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v2

    .line 1684
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1685
    new-instance v0, Lcom/facebook/orca/auth/UserTokenCredentials;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/auth/UserTokenCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$UserCredentialsProvider;->a()Lcom/facebook/orca/auth/UserTokenCredentials;

    move-result-object v0

    return-object v0
.end method
