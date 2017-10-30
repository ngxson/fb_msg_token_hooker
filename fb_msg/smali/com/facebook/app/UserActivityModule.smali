.class public Lcom/facebook/app/UserActivityModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "UserActivityModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    const-class v0, Lcom/facebook/app/UserActivityManager;

    invoke-virtual {p0, v0}, Lcom/facebook/app/UserActivityModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/app/UserActivityModule$UserActivityManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/app/UserActivityModule$UserActivityManagerProvider;-><init>(Lcom/facebook/app/UserActivityModule;Lcom/facebook/app/UserActivityModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 26
    const-class v0, Lcom/facebook/app/UserActivityManager$MyActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/app/UserActivityModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/app/UserActivityModule$UserActivityManagerListenerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/app/UserActivityModule$UserActivityManagerListenerProvider;-><init>(Lcom/facebook/app/UserActivityModule;Lcom/facebook/app/UserActivityModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 30
    const-class v0, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/app/UserActivityModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/app/UserActivityManager$MyActivityListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 32
    return-void
.end method
