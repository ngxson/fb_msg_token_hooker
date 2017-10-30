.class public Lcom/facebook/orca/database/ThreadsDbModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "ThreadsDbModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 188
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    const-class v0, Lcom/facebook/orca/database/ThreadsDbSchemaPart;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/ThreadsDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/ThreadsDbModule$ThreadsDbSchemaPartProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/ThreadsDbModule$ThreadsDbSchemaPartProvider;-><init>(Lcom/facebook/orca/database/ThreadsDbModule;Lcom/facebook/orca/database/ThreadsDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 37
    const-class v0, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/ThreadsDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/ThreadsDbModule$ThreadsDatabaseSupplierProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/ThreadsDbModule$ThreadsDatabaseSupplierProvider;-><init>(Lcom/facebook/orca/database/ThreadsDbModule;Lcom/facebook/orca/database/ThreadsDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 42
    const-class v0, Lcom/facebook/orca/database/DbCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/ThreadsDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/ThreadsDbModule$DbCacheProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/ThreadsDbModule$DbCacheProvider;-><init>(Lcom/facebook/orca/database/ThreadsDbModule;Lcom/facebook/orca/database/ThreadsDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 46
    const-class v0, Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/ThreadsDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadHandlerProvider;-><init>(Lcom/facebook/orca/database/ThreadsDbModule;Lcom/facebook/orca/database/ThreadsDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 48
    const-class v0, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/ThreadsDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadUsersHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadUsersHandlerProvider;-><init>(Lcom/facebook/orca/database/ThreadsDbModule;Lcom/facebook/orca/database/ThreadsDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 50
    const-class v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/ThreadsDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadsHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/ThreadsDbModule$DbFetchThreadsHandlerProvider;-><init>(Lcom/facebook/orca/database/ThreadsDbModule;Lcom/facebook/orca/database/ThreadsDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 52
    const-class v0, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/ThreadsDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/ThreadsDbModule$DbInsertThreadUsersHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/ThreadsDbModule$DbInsertThreadUsersHandlerProvider;-><init>(Lcom/facebook/orca/database/ThreadsDbModule;Lcom/facebook/orca/database/ThreadsDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 54
    const-class v0, Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/ThreadsDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/ThreadsDbModule$DbInsertThreadsHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/ThreadsDbModule$DbInsertThreadsHandlerProvider;-><init>(Lcom/facebook/orca/database/ThreadsDbModule;Lcom/facebook/orca/database/ThreadsDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 56
    const-class v0, Lcom/facebook/orca/database/DbServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/ThreadsDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/ThreadsDbModule$DbServiceHandlerProvider;-><init>(Lcom/facebook/orca/database/ThreadsDbModule;Lcom/facebook/orca/database/ThreadsDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 58
    const-class v0, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/ThreadsDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/ThreadsDbModule$DbThreadsPropertyUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/ThreadsDbModule$DbThreadsPropertyUtilProvider;-><init>(Lcom/facebook/orca/database/ThreadsDbModule;Lcom/facebook/orca/database/ThreadsDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 60
    return-void
.end method
