.class Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/server/PreProcessingServiceHandler;",
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
    .line 1754
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1754
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/server/PreProcessingServiceHandler;
    .locals 2

    .prologue
    .line 1758
    new-instance v1, Lcom/facebook/orca/server/PreProcessingServiceHandler;

    new-instance v0, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider$1;-><init>(Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {v1, v0}, Lcom/facebook/orca/server/PreProcessingServiceHandler;-><init>(Ljava/util/Set;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1754
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;->a()Lcom/facebook/orca/server/PreProcessingServiceHandler;

    move-result-object v0

    return-object v0
.end method
