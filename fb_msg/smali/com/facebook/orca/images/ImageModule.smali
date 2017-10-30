.class public Lcom/facebook/orca/images/ImageModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "ImageModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/images/ImageModule;->a:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/ImageModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/orca/images/ImageModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    const-class v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/images/ImageModule$ImageCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/images/ImageModule$ImageCacheProvider;-><init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 36
    const-class v0, Lcom/facebook/orca/images/FetchImageCoordinator;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/images/ImageModule$FetchImageCoordinatorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/images/ImageModule$FetchImageCoordinatorProvider;-><init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 39
    const-class v0, Lcom/facebook/orca/images/FetchImageExecutor;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/images/ImageModule$FetchImageExecutorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/images/ImageModule$FetchImageExecutorProvider;-><init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 42
    const-class v0, Lcom/facebook/orca/images/FetchImageDecodingExecutor;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/images/ImageModule$FetchImageDecodingExecutorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/images/ImageModule$FetchImageDecodingExecutorProvider;-><init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 45
    const-class v0, Lcom/facebook/orca/images/FetchImageHelper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/images/ImageModule$FetchImageHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/images/ImageModule$FetchImageHelperProvider;-><init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 48
    const-class v0, Lcom/facebook/orca/images/ImageMediaDownloader;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/images/ImageModule$ImageMediaDownloaderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/images/ImageModule$ImageMediaDownloaderProvider;-><init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 50
    const-class v0, Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/images/ImageModule$ImageScalingUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/images/ImageModule$ImageScalingUtilProvider;-><init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 53
    const-class v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/images/ImageModule$MediaAttachmentFactoryProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/images/ImageModule$MediaAttachmentFactoryProvider;-><init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 56
    const-class v0, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/images/ImageModule$ImageAttachmentDecoderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/images/ImageModule$ImageAttachmentDecoderProvider;-><init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 59
    const-class v0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/images/ImageModule$MediaAttachmentUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/images/ImageModule$MediaAttachmentUtilProvider;-><init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 63
    const-class v0, Lcom/facebook/orca/media/MediaCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/ImageModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 65
    return-void
.end method
