.class public Lcom/facebook/orca/push/mqtt/MqttPushModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "MqttPushModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushModule;->a:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttPushModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttConnectionManagerProvider;

    invoke-direct {v1, p0, v3}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttConnectionManagerProvider;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;Lcom/facebook/orca/push/mqtt/MqttPushModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 44
    const-class v0, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttPushModule$PushStateBroadcasterProvider;

    invoke-direct {v1, p0, v3}, Lcom/facebook/orca/push/mqtt/MqttPushModule$PushStateBroadcasterProvider;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;Lcom/facebook/orca/push/mqtt/MqttPushModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 46
    const-class v0, Lcom/facebook/orca/mqtt/MqttClient;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttClientProvider;

    invoke-direct {v1, p0, v3}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttClientProvider;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;Lcom/facebook/orca/push/mqtt/MqttPushModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 48
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttBroadcastReceiver;

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushModule;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/facebook/orca/push/mqtt/MqttBroadcastReceiver;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 50
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttForegroundStateSenderProvider;

    invoke-direct {v1, p0, v3}, Lcom/facebook/orca/push/mqtt/MqttPushModule$MqttForegroundStateSenderProvider;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushModule;Lcom/facebook/orca/push/mqtt/MqttPushModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 53
    const-class v0, Lcom/facebook/orca/app/INeedInit;

    const-class v1, Lcom/facebook/orca/annotations/NeedsLowPriorityInitOnUiThread;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/mqtt/MqttBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 58
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttPushHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 59
    return-void
.end method
