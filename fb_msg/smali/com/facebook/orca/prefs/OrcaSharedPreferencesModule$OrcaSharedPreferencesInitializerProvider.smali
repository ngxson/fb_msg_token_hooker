.class Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesInitializerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaSharedPreferencesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/prefs/OrcaSharedPreferencesInitializer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesInitializerProvider;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesInitializerProvider;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/prefs/OrcaSharedPreferencesInitializer;
    .locals 2

    .prologue
    .line 74
    new-instance v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesInitializer;

    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesInitializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-direct {v1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesInitializer;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesInitializerProvider;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferencesInitializer;

    move-result-object v0

    return-object v0
.end method
