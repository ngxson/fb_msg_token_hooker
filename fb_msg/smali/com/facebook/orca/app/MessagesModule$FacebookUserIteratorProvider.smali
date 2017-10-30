.class Lcom/facebook/orca/app/MessagesModule$FacebookUserIteratorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/users/FacebookUserIterator;",
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
    .line 1874
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$FacebookUserIteratorProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1874
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$FacebookUserIteratorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/FacebookUserIterator;
    .locals 4

    .prologue
    .line 1878
    new-instance v3, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;

    const-class v0, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$FacebookUserIteratorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    const-class v1, Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$FacebookUserIteratorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/UserSerialization;

    const-class v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$FacebookUserIteratorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/users/FacebookUsersDbUserIterator;-><init>(Lcom/facebook/orca/database/UsersDatabaseSupplier;Lcom/facebook/orca/users/UserSerialization;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1874
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$FacebookUserIteratorProvider;->a()Lcom/facebook/orca/users/FacebookUserIterator;

    move-result-object v0

    return-object v0
.end method
