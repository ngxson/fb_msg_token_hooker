.class public Lcom/facebook/orca/common/http/OrcaHttpModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "OrcaHttpModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpModule;->a:Landroid/content/Context;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/http/OrcaHttpModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpModule;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpModule;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 3
    .parameter

    .prologue
    .line 280
    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    .line 284
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 285
    return-object v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 246
    invoke-static {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpModule;->c(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    .line 248
    :cond_0
    invoke-static {p1}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/String;)Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 259
    :try_start_0
    const-class v0, Landroid/net/http/AndroidHttpClient;

    const-string v1, "newInstance"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 260
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/http/AndroidHttpClient;

    .line 262
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    .line 265
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 266
    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 269
    :catch_1
    move-exception v0

    .line 270
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 271
    :catch_2
    move-exception v0

    .line 272
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    const-class v0, Lorg/apache/http/client/CookieStore;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/http/OrcaCookieStore;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 73
    const-class v0, Lorg/apache/http/client/HttpClient;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 74
    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;Lcom/facebook/orca/common/http/OrcaHttpModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 77
    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpRequestProcessorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpRequestProcessorProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;Lcom/facebook/orca/common/http/OrcaHttpModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 80
    const-class v0, Lcom/facebook/orca/common/http/OrcaCookieStore;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaCookieStoreProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaCookieStoreProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;Lcom/facebook/orca/common/http/OrcaHttpModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 83
    const-class v0, Lorg/apache/http/conn/ClientConnectionManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$ClientConnectionManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$ClientConnectionManagerProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;Lcom/facebook/orca/common/http/OrcaHttpModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 85
    const-class v0, Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$HttpParamsProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$HttpParamsProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;Lcom/facebook/orca/common/http/OrcaHttpModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 89
    const-class v0, Lcom/facebook/orca/protocol/base/ApiResponseChecker;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$ApiResponseCheckerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$ApiResponseCheckerProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;Lcom/facebook/orca/common/http/OrcaHttpModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 92
    const-class v0, Lcom/facebook/orca/protocol/base/RealBatchRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$RealBatchRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$RealBatchRunnerProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;Lcom/facebook/orca/common/http/OrcaHttpModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 94
    const-class v0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$SimulatedBatchRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$SimulatedBatchRunnerProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;Lcom/facebook/orca/common/http/OrcaHttpModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 96
    const-class v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;Lcom/facebook/orca/common/http/OrcaHttpModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 98
    const-class v0, Lcom/facebook/orca/protocol/base/BatchRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/protocol/base/RealBatchRunner;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 101
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsPhpProfilingEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/protocol/base/IsPhpProfilingEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 104
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsWirehogProfilingEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/protocol/base/IsWirehogProfilingEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 109
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/CarrierIdOverride;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/protocol/base/CarrierIdOverrideProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 113
    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpClientObserver;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 114
    return-void
.end method
