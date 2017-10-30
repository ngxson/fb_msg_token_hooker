.class Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "OrcaSharedPreferencesImpl.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$2;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$2;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    const-string v1, "prefs"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;Ljava/util/List;)V

    .line 138
    return-void
.end method
