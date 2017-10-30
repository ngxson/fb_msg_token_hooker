.class Lcom/facebook/orca/images/ImageModule$FetchImageDecodingExecutorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ImageModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/images/FetchImageDecodingExecutor;",
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
    .line 131
    iput-object p1, p0, Lcom/facebook/orca/images/ImageModule$FetchImageDecodingExecutorProvider;->a:Lcom/facebook/orca/images/ImageModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageModule$FetchImageDecodingExecutorProvider;-><init>(Lcom/facebook/orca/images/ImageModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/images/FetchImageDecodingExecutor;
    .locals 2

    .prologue
    .line 136
    new-instance v1, Lcom/facebook/orca/images/FetchImageDecodingExecutor;

    const-class v0, Lcom/facebook/orca/images/FetchImageHelper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule$FetchImageDecodingExecutorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageHelper;

    invoke-direct {v1, v0}, Lcom/facebook/orca/images/FetchImageDecodingExecutor;-><init>(Lcom/facebook/orca/images/FetchImageHelper;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageModule$FetchImageDecodingExecutorProvider;->a()Lcom/facebook/orca/images/FetchImageDecodingExecutor;

    move-result-object v0

    return-object v0
.end method
