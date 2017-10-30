.class Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$2$1;
.super Ljava/lang/Object;
.source "OrcaInternalPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$2;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$2$1;->a:Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$2$1;->a:Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$2;

    iget-object v0, v0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity$2;->a:Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;

    invoke-static {v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->b(Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;)Lcom/facebook/orca/app/OrcaDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaDataManager;->e()V

    .line 115
    return-void
.end method
