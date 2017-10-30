.class Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$1;
.super Ljava/lang/Object;
.source "FbSdcardLogger.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$1;->a:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    sget-object v0, Lcom/facebook/orca/prefs/SharedPrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$1;->a:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;

    invoke-static {v0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->a(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;)V

    .line 73
    :cond_0
    return-void
.end method
