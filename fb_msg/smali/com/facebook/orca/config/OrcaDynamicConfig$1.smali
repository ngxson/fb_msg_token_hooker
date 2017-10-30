.class Lcom/facebook/orca/config/OrcaDynamicConfig$1;
.super Ljava/lang/Object;
.source "OrcaDynamicConfig.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/config/OrcaDynamicConfig;


# direct methods
.method constructor <init>(Lcom/facebook/orca/config/OrcaDynamicConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/orca/config/OrcaDynamicConfig$1;->a:Lcom/facebook/orca/config/OrcaDynamicConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaDynamicConfig$1;->a:Lcom/facebook/orca/config/OrcaDynamicConfig;

    invoke-static {v0, p2}, Lcom/facebook/orca/config/OrcaDynamicConfig;->a(Lcom/facebook/orca/config/OrcaDynamicConfig;Lcom/facebook/orca/prefs/PrefKey;)V

    .line 68
    return-void
.end method
