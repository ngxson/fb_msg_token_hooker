.class Lcom/facebook/orca/module/UiModule$GraphicSizerFactoryProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "UiModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/module/UiModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/module/UiModule;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/orca/module/UiModule$GraphicSizerFactoryProvider;->a:Lcom/facebook/orca/module/UiModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/module/UiModule;Lcom/facebook/orca/module/UiModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/orca/module/UiModule$GraphicSizerFactoryProvider;-><init>(Lcom/facebook/orca/module/UiModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-direct {v0}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/facebook/orca/module/UiModule$GraphicSizerFactoryProvider;->a()Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    move-result-object v0

    return-object v0
.end method
