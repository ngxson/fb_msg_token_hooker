.class public Lcom/facebook/orca/database/UsersDbModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "UsersDbModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    const-class v0, Lcom/facebook/orca/database/UsersDbSchemaPart;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/UsersDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/UsersDbModule$UsersDbSchemaPartProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/UsersDbModule$UsersDbSchemaPartProvider;-><init>(Lcom/facebook/orca/database/UsersDbModule;Lcom/facebook/orca/database/UsersDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 27
    const-class v0, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/UsersDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/UsersDbModule$UsersDatabaseSupplierProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/UsersDbModule$UsersDatabaseSupplierProvider;-><init>(Lcom/facebook/orca/database/UsersDbModule;Lcom/facebook/orca/database/UsersDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 31
    const-class v0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/UsersDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerMyNameLookupBuilder;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerMyNameLookupBuilder;-><init>(Lcom/facebook/orca/database/UsersDbModule;Lcom/facebook/orca/database/UsersDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 33
    const-class v0, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/UsersDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/UsersDbModule$DbInsertFriendUsersHandlerProvider;-><init>(Lcom/facebook/orca/database/UsersDbModule;Lcom/facebook/orca/database/UsersDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 35
    const-class v0, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/UsersDbModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/database/UsersDbModule$DbUsersPropertyUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/database/UsersDbModule$DbUsersPropertyUtilProvider;-><init>(Lcom/facebook/orca/database/UsersDbModule;Lcom/facebook/orca/database/UsersDbModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 37
    return-void
.end method
