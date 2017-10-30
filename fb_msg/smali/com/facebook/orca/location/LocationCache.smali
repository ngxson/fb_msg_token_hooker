.class public Lcom/facebook/orca/location/LocationCache;
.super Ljava/lang/Object;
.source "LocationCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private volatile a:Landroid/location/Location;

.field private final b:Lcom/facebook/orca/common/util/Clock;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/util/Clock;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/orca/location/LocationCache;->b:Lcom/facebook/orca/common/util/Clock;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/location/LocationCache;->a:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/location/LocationCache;->b:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/orca/location/LocationCache;->a:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/location/LocationCache;->a:Landroid/location/Location;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/location/LocationCache;->a:Landroid/location/Location;

    return-object v0
.end method

.method public a(Landroid/location/Location;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/facebook/orca/location/LocationCache;->a:Landroid/location/Location;

    .line 38
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/location/LocationCache;->a:Landroid/location/Location;

    .line 42
    return-void
.end method
