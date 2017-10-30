.class public Lcom/facebook/orca/push/mqtt/OrcaPushModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "OrcaPushModule.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/OrcaPushModule;->a:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/OrcaPushModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/OrcaPushModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/OrcaPushModule$MqttPushServiceManagerProvider;

    invoke-direct {v1, p0, v3}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$MqttPushServiceManagerProvider;-><init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;Lcom/facebook/orca/push/mqtt/OrcaPushModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 56
    const-class v0, Lcom/facebook/orca/config/MqttConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttConfigProvider;

    invoke-direct {v1, p0, v3}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttConfigProvider;-><init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;Lcom/facebook/orca/push/mqtt/OrcaPushModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 58
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsPersistentPushServiceEnabledForUser;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/mqtt/IsPersistentPushServiceEnabledForUserProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 64
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsPersistentPushServiceEnabledForApp;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 69
    const-class v0, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;

    invoke-direct {v1, p0, v3}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttPushHandlerProvider;-><init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;Lcom/facebook/orca/push/mqtt/OrcaPushModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 72
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttPushHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/mqtt/OrcaMqttPushHandler;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 73
    const-class v0, Lcom/facebook/orca/push/mqtt/IProvideSubscribeTopics;

    const-class v1, Lcom/facebook/orca/push/mqtt/MqttTopicList;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/mqtt/IProvideSubscribeTopics;

    const-class v2, Lcom/facebook/orca/annotations/ForMessages;

    invoke-static {v1, v2}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    .line 75
    const-class v0, Lcom/facebook/orca/push/mqtt/IProvideSubscribeTopics;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/ForMessages;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;

    invoke-direct {v1, p0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaMqttTopicsSetProvider;-><init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 80
    const-class v0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;

    invoke-direct {v1, p0, v3}, Lcom/facebook/orca/push/mqtt/OrcaPushModule$OrcaC2dmPushHandlerProvider;-><init>(Lcom/facebook/orca/push/mqtt/OrcaPushModule;Lcom/facebook/orca/push/mqtt/OrcaPushModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 83
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMPushHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/OrcaPushModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 85
    return-void
.end method
