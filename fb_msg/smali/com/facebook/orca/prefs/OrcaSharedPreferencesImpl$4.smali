.class Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$4;
.super Ljava/lang/Object;
.source "OrcaSharedPreferencesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$4;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 460
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$4;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$4;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;Z)Z

    .line 462
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$4;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-static {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;)V

    .line 464
    return-void

    .line 462
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
