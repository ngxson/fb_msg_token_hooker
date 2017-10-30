.class public Lcom/facebook/orca/audio/AudioModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "AudioModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    const-class v0, Lcom/facebook/orca/audio/AudioCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/audio/AudioModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/audio/AudioModule$AudioCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/audio/AudioModule$AudioCacheProvider;-><init>(Lcom/facebook/orca/audio/AudioModule;Lcom/facebook/orca/audio/AudioModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 30
    const-class v0, Lcom/facebook/orca/audio/AudioMediaDownloader;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/audio/AudioModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/audio/AudioModule$AudioMediaDownloaderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/audio/AudioModule$AudioMediaDownloaderProvider;-><init>(Lcom/facebook/orca/audio/AudioModule;Lcom/facebook/orca/audio/AudioModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 32
    const-class v0, Lcom/facebook/orca/audio/FetchAudioExecutor;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/audio/AudioModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/audio/AudioModule$FetchAudioExecutorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/audio/AudioModule$FetchAudioExecutorProvider;-><init>(Lcom/facebook/orca/audio/AudioModule;Lcom/facebook/orca/audio/AudioModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 35
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/audio/AudioModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsAudioMessageEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/audio/IsAudioMessageEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 38
    const-class v0, Lcom/facebook/orca/media/MediaCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/audio/AudioModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/audio/AudioCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 40
    return-void
.end method
