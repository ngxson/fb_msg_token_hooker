.class public Lcom/facebook/orca/module/UiModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "UiModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/orca/module/UiModule;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/module/UiModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/orca/module/UiModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/facebook/orca/images/ImageModule;

    iget-object v1, p0, Lcom/facebook/orca/module/UiModule;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/orca/images/ImageModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/module/UiModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 30
    const-class v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/module/UiModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/module/UiModule$GraphicSizerFactoryProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/module/UiModule$GraphicSizerFactoryProvider;-><init>(Lcom/facebook/orca/module/UiModule;Lcom/facebook/orca/module/UiModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 34
    const-class v0, Lcom/facebook/common/util/TimeFormatUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/module/UiModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/module/UiModule$TimeFormatUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/module/UiModule$TimeFormatUtilProvider;-><init>(Lcom/facebook/orca/module/UiModule;Lcom/facebook/orca/module/UiModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 39
    const-class v0, Lcom/facebook/widget/MapImage$MapUriBuilder;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/module/UiModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/module/UiModule$MapUriBuilder;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/module/UiModule$MapUriBuilder;-><init>(Lcom/facebook/orca/module/UiModule;Lcom/facebook/orca/module/UiModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 41
    return-void
.end method
