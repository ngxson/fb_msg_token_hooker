.class public Lcom/facebook/orca/location/LocateUserExecutor;
.super Ljava/lang/Object;
.source "LocateUserExecutor.java"


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
.field private final b:Landroid/location/LocationManager;

.field private final c:Lcom/facebook/orca/location/LocationCache;

.field private final d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final e:Lcom/facebook/orca/common/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/facebook/orca/location/LocateUserExecutor;

    sput-object v0, Lcom/facebook/orca/location/LocateUserExecutor;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Lcom/facebook/orca/location/LocationCache;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/common/util/Clock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/orca/location/LocateUserExecutor;->b:Landroid/location/LocationManager;

    .line 43
    iput-object p2, p0, Lcom/facebook/orca/location/LocateUserExecutor;->c:Lcom/facebook/orca/location/LocationCache;

    .line 44
    iput-object p3, p0, Lcom/facebook/orca/location/LocateUserExecutor;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 45
    iput-object p4, p0, Lcom/facebook/orca/location/LocateUserExecutor;->e:Lcom/facebook/orca/common/util/Clock;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/location/LocateUserExecutor;)Lcom/facebook/orca/location/LocationCache;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor;->c:Lcom/facebook/orca/location/LocationCache;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/orca/location/LocateUserExecutor;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/location/LocateUserExecutor;)Lcom/facebook/orca/common/util/AndroidThreadUtil;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/location/LocateUserExecutor;)Landroid/location/LocationManager;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor;->b:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/location/LocateUserExecutor;)Lcom/facebook/orca/common/util/Clock;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor;->e:Lcom/facebook/orca/common/util/Clock;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/GetDeviceLocationParams;Lcom/facebook/orca/server/OrcaServiceProgressCallback;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/server/GetDeviceLocationParams;",
            "Lcom/facebook/orca/server/OrcaServiceProgressCallback;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/facebook/orca/location/LocateUserExecutor;->a:Ljava/lang/Class;

    const-string v1, "Getting location. Target accurancy: %d, Timeout: %d ms"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/facebook/orca/server/GetDeviceLocationParams;->b()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/facebook/orca/server/GetDeviceLocationParams;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    new-instance v0, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/orca/location/LocateUserExecutor$LocateUserOperation;-><init>(Lcom/facebook/orca/location/LocateUserExecutor;Lcom/facebook/orca/server/GetDeviceLocationParams;Lcom/facebook/orca/server/OrcaServiceProgressCallback;)V

    return-object v0
.end method

.method a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 9
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/32 v7, 0x1d4c0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 183
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserExecutor;->e:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v3

    .line 184
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v7

    if-lez v0, :cond_1

    move v1, v2

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 189
    :cond_1
    if-eqz p2, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v4, v3, v5

    .line 196
    cmp-long v0, v4, v7

    if-lez v0, :cond_2

    move v3, v1

    .line 197
    :goto_1
    const-wide/32 v6, -0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v1

    .line 198
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v5, v1

    .line 202
    :goto_3
    if-nez v3, :cond_0

    .line 205
    if-eqz v0, :cond_5

    move v1, v2

    .line 206
    goto :goto_0

    :cond_2
    move v3, v2

    .line 196
    goto :goto_1

    :cond_3
    move v0, v2

    .line 197
    goto :goto_2

    :cond_4
    move v5, v2

    .line 198
    goto :goto_3

    .line 210
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 211
    if-lez v0, :cond_8

    move v4, v1

    .line 212
    :goto_4
    if-gez v0, :cond_9

    move v3, v1

    .line 213
    :goto_5
    const/16 v6, 0xc8

    if-le v0, v6, :cond_a

    move v0, v1

    .line 216
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/facebook/orca/location/LocateUserExecutor;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 220
    if-nez v3, :cond_0

    .line 222
    if-eqz v5, :cond_6

    if-eqz v4, :cond_0

    .line 224
    :cond_6
    if-eqz v5, :cond_7

    if-nez v0, :cond_7

    if-nez v6, :cond_0

    :cond_7
    move v1, v2

    .line 227
    goto :goto_0

    :cond_8
    move v4, v2

    .line 211
    goto :goto_4

    :cond_9
    move v3, v2

    .line 212
    goto :goto_5

    :cond_a
    move v0, v2

    .line 213
    goto :goto_6
.end method
