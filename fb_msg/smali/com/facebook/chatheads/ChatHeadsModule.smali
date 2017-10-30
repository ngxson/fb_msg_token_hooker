.class public Lcom/facebook/chatheads/ChatHeadsModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "ChatHeadsModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadsModule;->a:Landroid/content/Context;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadsModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadsModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/chatheads/annotations/IsChatHeadsEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/chatheads/IsChatHeadsEnabledProvider;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 30
    const-class v0, Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadWindowManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadWindowManagerProvider;-><init>(Lcom/facebook/chatheads/ChatHeadsModule;Lcom/facebook/chatheads/ChatHeadsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 32
    const-class v0, Lcom/facebook/chatheads/ChatHeadPushHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadPushHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadPushHandlerProvider;-><init>(Lcom/facebook/chatheads/ChatHeadsModule;Lcom/facebook/chatheads/ChatHeadsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 35
    const-class v0, Lcom/facebook/chatheads/ChatHeadBroadcaster;

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadBroadcasterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadBroadcasterProvider;-><init>(Lcom/facebook/chatheads/ChatHeadsModule;Lcom/facebook/chatheads/ChatHeadsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 38
    const-class v0, Lcom/facebook/orca/push/PushHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadsModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/chatheads/ChatHeadPushHandler;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 41
    const-class v0, Lcom/facebook/chatheads/RecentTaskChangeDetector;

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/chatheads/ChatHeadsModule$RecentTaskChangeDetectorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/chatheads/ChatHeadsModule$RecentTaskChangeDetectorProvider;-><init>(Lcom/facebook/chatheads/ChatHeadsModule;Lcom/facebook/chatheads/ChatHeadsModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 43
    return-void
.end method
