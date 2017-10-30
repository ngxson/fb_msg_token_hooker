.class Lcom/facebook/orca/app/MessagesModule$ChatVisiblityCacheProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/cache/ChatVisibilityCache;",
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
    .line 939
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$ChatVisiblityCacheProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ChatVisiblityCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/cache/ChatVisibilityCache;
    .locals 1

    .prologue
    .line 943
    new-instance v0, Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-direct {v0}, Lcom/facebook/orca/cache/ChatVisibilityCache;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$ChatVisiblityCacheProvider;->a()Lcom/facebook/orca/cache/ChatVisibilityCache;

    move-result-object v0

    return-object v0
.end method
