.class Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$1;
.super Ljava/lang/Object;
.source "OrcaSharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$1;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$1;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-static {v0, p2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;Ljava/lang/String;)V

    .line 132
    return-void
.end method
