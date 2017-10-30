.class Lcom/facebook/orca/images/ImageModule$FetchImageExecutorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ImageModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/images/FetchImageExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/images/ImageModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/images/ImageModule;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/facebook/orca/images/ImageModule$FetchImageExecutorProvider;->a:Lcom/facebook/orca/images/ImageModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageModule$FetchImageExecutorProvider;-><init>(Lcom/facebook/orca/images/ImageModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/images/FetchImageExecutor;
    .locals 5

    .prologue
    .line 122
    new-instance v4, Lcom/facebook/orca/images/FetchImageExecutor;

    const-class v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule$FetchImageExecutorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache;

    const-class v1, Lcom/facebook/orca/common/async/KeyedExecutor;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/images/ImageModule$FetchImageExecutorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/async/KeyedExecutor;

    const-class v2, Lcom/facebook/orca/images/FetchImageHelper;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/images/ImageModule$FetchImageExecutorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/images/FetchImageHelper;

    const-class v3, Lcom/facebook/orca/images/FetchImageDecodingExecutor;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/images/ImageModule$FetchImageExecutorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/images/FetchImageDecodingExecutor;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/orca/images/FetchImageExecutor;-><init>(Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/common/async/KeyedExecutor;Lcom/facebook/orca/images/FetchImageHelper;Lcom/facebook/orca/images/FetchImageDecodingExecutor;)V

    return-object v4
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageModule$FetchImageExecutorProvider;->a()Lcom/facebook/orca/images/FetchImageExecutor;

    move-result-object v0

    return-object v0
.end method
