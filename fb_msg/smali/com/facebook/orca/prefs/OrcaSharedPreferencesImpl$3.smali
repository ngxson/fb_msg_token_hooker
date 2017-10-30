.class Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$3;
.super Ljava/lang/Object;
.source "OrcaSharedPreferencesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$3;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    iput-object p2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$3;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$3;->b:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$3;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;Ljava/util/Map;)V

    .line 433
    return-void
.end method
