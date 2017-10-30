.class Lcom/facebook/orca/app/MessagesModule$SendMessageMethodProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/SendMessageMethod;",
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
    .line 1448
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$SendMessageMethodProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1448
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$SendMessageMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/protocol/methods/SendMessageMethod;
    .locals 2

    .prologue
    .line 1452
    new-instance v1, Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    const-class v0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$SendMessageMethodProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/methods/SendMessageMethod;-><init>(Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1448
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$SendMessageMethodProvider;->a()Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    move-result-object v0

    return-object v0
.end method
