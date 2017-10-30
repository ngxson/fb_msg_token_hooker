.class Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaSharedPreferencesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;",
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
    .line 55
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesProvider;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesProvider;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;
    .locals 6

    .prologue
    .line 59
    new-instance v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    const-class v1, Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Landroid/content/ContentResolver;

    const-class v3, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentResolver;

    const-class v3, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    const-class v4, Landroid/content/SharedPreferences;

    const-class v5, Lcom/facebook/orca/annotations/DefaultSharedPreferences;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    const-class v5, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/facebook/orca/common/util/AndroidThreadUtil;Landroid/content/SharedPreferences;Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesModule$OrcaSharedPreferencesProvider;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    move-result-object v0

    return-object v0
.end method
