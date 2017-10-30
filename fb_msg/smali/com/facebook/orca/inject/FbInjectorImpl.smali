.class public Lcom/facebook/orca/inject/FbInjectorImpl;
.super Lcom/facebook/orca/inject/AbstractInjector;
.source "FbInjectorImpl.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Ljavax/inject/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/orca/inject/MultiBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Ljavax/inject/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;

.field private h:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/orca/inject/Module;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractInjector;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->a:Ljava/util/Map;

    .line 40
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->b:Ljava/util/Map;

    .line 41
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->c:Ljava/util/Map;

    .line 42
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->d:Ljava/util/Set;

    .line 43
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->e:Ljava/util/Set;

    .line 44
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->f:Ljava/util/Set;

    .line 49
    const-string v0, "FbInjectorImpl.init"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 51
    new-instance v0, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;

    invoke-direct {v0, p0}, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;-><init>(Lcom/facebook/orca/inject/FbInjectorImpl;)V

    iput-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->g:Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;

    .line 53
    const-string v0, "FbInjectorImpl.init#modules"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/Module;

    .line 55
    invoke-direct {p0, v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->a(Lcom/facebook/orca/inject/Module;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/inject/FbInjectorImpl;->c()V

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    .line 63
    iget-object v3, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No binding for required key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->h:Z

    .line 71
    if-eqz p2, :cond_4

    .line 72
    const-string v0, "FbInjectorImpl.init#eagerSingletons"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v4

    .line 75
    invoke-virtual {p0, v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v4}, Lcom/facebook/orca/debug/Tracer;->a()J

    goto :goto_1

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 79
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 81
    :cond_4
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/inject/FbInjectorImpl;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->e:Ljava/util/Set;

    return-object v0
.end method

.method private a(Lcom/facebook/orca/inject/Module;)V
    .locals 7
    .parameter

    .prologue
    .line 85
    new-instance v3, Lcom/facebook/orca/inject/BinderImpl;

    invoke-direct {v3}, Lcom/facebook/orca/inject/BinderImpl;-><init>()V

    .line 86
    invoke-interface {p1, v3}, Lcom/facebook/orca/inject/Module;->a(Lcom/facebook/orca/inject/Binder;)V

    .line 88
    invoke-interface {v3}, Lcom/facebook/orca/inject/Binder;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/Module;

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Module "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 90
    invoke-direct {p0, v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->a(Lcom/facebook/orca/inject/Module;)V

    .line 91
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->a()J

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {v3}, Lcom/facebook/orca/inject/Binder;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/Binding;

    .line 95
    invoke-virtual {v0}, Lcom/facebook/orca/inject/Binding;->b()Ljavax/inject/Provider;

    move-result-object v2

    .line 96
    instance-of v1, v2, Lcom/facebook/orca/inject/ProviderWithInjector;

    if-eqz v1, :cond_2

    move-object v1, v2

    .line 97
    check-cast v1, Lcom/facebook/orca/inject/ProviderWithInjector;

    invoke-interface {v1, p0}, Lcom/facebook/orca/inject/ProviderWithInjector;->a(Lcom/facebook/orca/inject/FbInjector;)V

    .line 99
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/inject/Binding;->c()Lcom/facebook/orca/inject/Scope;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {v0}, Lcom/facebook/orca/inject/Binding;->c()Lcom/facebook/orca/inject/Scope;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/Scope;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    .line 105
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/orca/inject/Binding;->a()Lcom/google/inject/Key;

    move-result-object v1

    .line 106
    iget-object v5, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->a:Ljava/util/Map;

    new-instance v6, Lcom/facebook/orca/inject/ProvisioningDebugStackProvider;

    invoke-direct {v6, v1, v2}, Lcom/facebook/orca/inject/ProvisioningDebugStackProvider;-><init>(Lcom/google/inject/Key;Ljavax/inject/Provider;)V

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v0}, Lcom/facebook/orca/inject/Binding;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->d:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/orca/inject/Binding;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->e:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_5
    invoke-interface {v3}, Lcom/facebook/orca/inject/Binder;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/Key;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/MultiBinding;

    .line 117
    iget-object v2, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/inject/MultiBinder;

    .line 118
    if-nez v2, :cond_7

    .line 119
    new-instance v2, Lcom/facebook/orca/inject/MultiBinder;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/inject/MultiBinder;-><init>(Lcom/facebook/orca/inject/FbInjector;Lcom/google/inject/Key;)V

    .line 120
    iget-object v5, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->b:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_7
    invoke-virtual {v0}, Lcom/facebook/orca/inject/MultiBinding;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    .line 123
    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/MultiBinder;->a(Lcom/google/inject/Key;)V

    goto :goto_2

    .line 127
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->f:Ljava/util/Set;

    invoke-interface {v3}, Lcom/facebook/orca/inject/Binder;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 128
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->h:Z

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Called injector during binding"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    return-void
.end method

.method private c(Lcom/google/inject/Key;)Ljavax/inject/Provider;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p1}, Lcom/google/inject/Key;->c()Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/inject/Key;->b()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 201
    :goto_0
    return-object v0

    .line 171
    :cond_1
    invoke-virtual {p1}, Lcom/google/inject/Key;->a()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 172
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v2, :cond_2

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_2

    instance-of v2, v0, Ljava/lang/reflect/WildcardType;

    if-nez v2, :cond_2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 176
    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p1}, Lcom/google/inject/Key;->a()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->a()Ljava/lang/Class;

    move-result-object v0

    .line 181
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 182
    if-eqz v2, :cond_4

    .line 183
    const-string v3, "OrcaInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created just-in-time provider for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/facebook/orca/inject/FbInjectorImpl$1;

    invoke-direct {v0, p0, v2}, Lcom/facebook/orca/inject/FbInjectorImpl$1;-><init>(Lcom/facebook/orca/inject/FbInjectorImpl;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 201
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 199
    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/MultiBinder;

    .line 163
    iget-object v2, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/inject/MultiBinder;->b()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/inject/MultiBinder;->a()Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->g:Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;

    return-object v0
.end method

.method public b(Lcom/google/inject/Key;)Ljavax/inject/Provider;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/facebook/orca/inject/FbInjectorImpl;->b()V

    .line 134
    sget-object v0, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;->PROVIDER_GET:Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

    invoke-static {v0, p1}, Lcom/facebook/orca/inject/ProvisioningDebugStack;->a(Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;Lcom/google/inject/Key;)V

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    .line 137
    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    .line 139
    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lcom/facebook/orca/inject/FbInjectorImpl;->c(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/facebook/orca/inject/FbInjectorImpl;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    if-nez v0, :cond_1

    .line 147
    new-instance v0, Lcom/facebook/orca/inject/ProvisioningException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No provider bound for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/orca/inject/ProvisioningDebugStack;->a()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/facebook/orca/inject/ProvisioningDebugStack;->a()V

    return-object v0
.end method
