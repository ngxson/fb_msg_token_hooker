.class Lcom/facebook/orca/sms/MmsSmsLogger$1;
.super Ljava/lang/Object;
.source "MmsSmsLogger.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/sms/MmsSmsLogger;


# direct methods
.method constructor <init>(Lcom/facebook/orca/sms/MmsSmsLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsLogger$1;->a:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 53
    sget-object v0, Lcom/facebook/orca/prefs/MessagesPrefKeys;->i:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/orca/prefs/MessagesPrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsLogger$1;->a:Lcom/facebook/orca/sms/MmsSmsLogger;

    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {p1, v1, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v1

    sget-object v2, Lcom/facebook/orca/prefs/MessagesPrefKeys;->i:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {p1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/sms/MmsSmsLogger;->a(ZZ)V

    .line 59
    :cond_1
    return-void
.end method
