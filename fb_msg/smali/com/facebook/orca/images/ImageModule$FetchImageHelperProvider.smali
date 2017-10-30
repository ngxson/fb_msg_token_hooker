.class Lcom/facebook/orca/images/ImageModule$FetchImageHelperProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ImageModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/images/FetchImageHelper;",
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
    .line 142
    iput-object p1, p0, Lcom/facebook/orca/images/ImageModule$FetchImageHelperProvider;->a:Lcom/facebook/orca/images/ImageModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageModule$FetchImageHelperProvider;-><init>(Lcom/facebook/orca/images/ImageModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/images/FetchImageHelper;
    .locals 3

    .prologue
    .line 146
    new-instance v2, Lcom/facebook/orca/images/FetchImageHelper;

    const-class v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule$FetchImageHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache;

    const-class v1, Lcom/facebook/orca/images/ImageMediaDownloader;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/images/ImageModule$FetchImageHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/images/ImageMediaDownloader;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/images/FetchImageHelper;-><init>(Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/images/ImageMediaDownloader;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageModule$FetchImageHelperProvider;->a()Lcom/facebook/orca/images/FetchImageHelper;

    move-result-object v0

    return-object v0
.end method
