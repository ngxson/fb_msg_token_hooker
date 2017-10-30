.class Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;
.super Ljava/lang/Object;
.source "OrcaSharedPreferencesContract.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/net/Uri;

.field private final e:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract$PrefColumns;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->a:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->b:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->c:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->d:Landroid/net/Uri;

    .line 32
    new-instance v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract$PrefColumns;

    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->d:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract$PrefColumns;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract$PrefColumns;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract$PrefColumns;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract$PrefColumns;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract$PrefColumns;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract$PrefColumns;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->c:Ljava/lang/String;

    return-object v0
.end method
