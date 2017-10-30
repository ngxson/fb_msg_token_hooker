.class public Lcom/facebook/orca/server/ServicesModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "ServicesModule.java"


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
    iput-object p1, p0, Lcom/facebook/orca/server/ServicesModule;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/ServicesModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/orca/server/ServicesModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    const-class v0, Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/ServicesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/server/ServicesModule$OrcaServiceQueueManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceQueueManagerProvider;-><init>(Lcom/facebook/orca/server/ServicesModule;Lcom/facebook/orca/server/ServicesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 31
    const-class v0, Lcom/facebook/orca/server/OrcaServiceRegistry;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/ServicesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/server/ServicesModule$OrcaServiceRegistryProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceRegistryProvider;-><init>(Lcom/facebook/orca/server/ServicesModule;Lcom/facebook/orca/server/ServicesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 34
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/ServicesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationProvider;-><init>(Lcom/facebook/orca/server/ServicesModule;Lcom/facebook/orca/server/ServicesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 36
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/ServicesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationForAppProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationForAppProvider;-><init>(Lcom/facebook/orca/server/ServicesModule;Lcom/facebook/orca/server/ServicesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 39
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/ServicesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationFactoryProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationFactoryProvider;-><init>(Lcom/facebook/orca/server/ServicesModule;Lcom/facebook/orca/server/ServicesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 41
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/ServicesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationFactoryForAppProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/server/ServicesModule$OrcaServiceOperationFactoryForAppProvider;-><init>(Lcom/facebook/orca/server/ServicesModule;Lcom/facebook/orca/server/ServicesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 45
    const-class v0, Lcom/facebook/orca/server/OrcaServiceHandlerHook;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/ServicesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 46
    const-class v0, Lcom/facebook/orca/server/OrcaServiceQueueHook;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/ServicesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 48
    return-void
.end method
