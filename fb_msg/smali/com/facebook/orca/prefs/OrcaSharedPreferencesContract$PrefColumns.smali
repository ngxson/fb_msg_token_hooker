.class final Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract$PrefColumns;
.super Ljava/lang/Object;
.source "OrcaSharedPreferencesContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# instance fields
.field final a:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "prefs"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract$PrefColumns;->a:Landroid/net/Uri;

    .line 76
    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract$PrefColumns;->a:Landroid/net/Uri;

    return-object v0
.end method
