.class public Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "OrcaSharedPreferencesModule.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;->b:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesProvider;

    invoke-direct {v1, p0, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesProvider;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 44
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 45
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 48
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesInitializer;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesInitializerProvider;

    invoke-direct {v1, p0, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesInitializerProvider;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 51
    const-class v0, Lcom/facebook/orca/app/INeedInit;

    const-class v1, Lcom/facebook/orca/annotations/NeedsHighPriorityInitOnBackgroundThread;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesInitializer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 53
    return-void
.end method
