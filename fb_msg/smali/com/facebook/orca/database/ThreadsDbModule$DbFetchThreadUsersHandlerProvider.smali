.class Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadUsersHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ThreadsDbModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/DbFetchThreadUsersHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/database/ThreadsDbModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/database/ThreadsDbModule;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadUsersHandlerProvider;->a:Lcom/facebook/orca/database/ThreadsDbModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/database/ThreadsDbModule;Lcom/facebook/orca/database/ThreadsDbModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadUsersHandlerProvider;-><init>(Lcom/facebook/orca/database/ThreadsDbModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/DbFetchThreadUsersHandler;
    .locals 5

    .prologue
    .line 165
    new-instance v3, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    const-class v0, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadUsersHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    const-class v1, Lcom/facebook/orca/users/FacebookUserIterator;

    const-class v2, Lcom/facebook/orca/annotations/ForMessages;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadUsersHandlerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v4

    const-class v1, Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadUsersHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/UserSerialization;

    const-class v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadUsersHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;-><init>(Lcom/facebook/orca/database/ThreadsDatabaseSupplier;Ljavax/inject/Provider;Lcom/facebook/orca/users/UserSerialization;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadUsersHandlerProvider;->a()Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    move-result-object v0

    return-object v0
.end method
