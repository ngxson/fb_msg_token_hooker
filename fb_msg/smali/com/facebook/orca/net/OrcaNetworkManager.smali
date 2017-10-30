.class public Lcom/facebook/orca/net/OrcaNetworkManager;
.super Ljava/lang/Object;
.source "OrcaNetworkManager.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/net/ConnectivityManager;

.field private final d:Lcom/facebook/orca/app/ActivityBroadcaster;

.field private e:Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/facebook/orca/net/OrcaNetworkManager;

    sput-object v0, Lcom/facebook/orca/net/OrcaNetworkManager;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/app/ActivityBroadcaster;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->b:Landroid/content/Context;

    .line 37
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->c:Landroid/net/ConnectivityManager;

    .line 39
    iput-object p2, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->d:Lcom/facebook/orca/app/ActivityBroadcaster;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/net/OrcaNetworkManager;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->c:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/net/OrcaNetworkManager;)J
    .locals 2
    .parameter

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->f:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/orca/net/OrcaNetworkManager;)Lcom/facebook/orca/app/ActivityBroadcaster;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->d:Lcom/facebook/orca/app/ActivityBroadcaster;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/facebook/orca/net/OrcaNetworkManager;->a:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;-><init>(Lcom/facebook/orca/net/OrcaNetworkManager;Lcom/facebook/orca/net/OrcaNetworkManager$1;)V

    iput-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->e:Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;

    .line 45
    iget-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->e:Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->f:J

    .line 48
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/facebook/orca/net/OrcaNetworkManager;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/facebook/orca/net/OrcaNetworkManager;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    return-object v0
.end method
