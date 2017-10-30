.class Lcom/facebook/orca/cache/ThreadLocalState;
.super Ljava/lang/Object;
.source "ThreadLocalState.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Landroid/location/Location;

.field private g:J

.field private h:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->b:J

    .line 23
    iput-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->d:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/cache/ThreadLocalState;->a:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/facebook/orca/cache/ThreadLocalState;->b:J

    .line 56
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    .line 59
    :cond_0
    return-void
.end method

.method public a(Landroid/location/Location;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/facebook/orca/cache/ThreadLocalState;->f:Landroid/location/Location;

    .line 99
    iput-wide p2, p0, Lcom/facebook/orca/cache/ThreadLocalState;->g:J

    .line 100
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/facebook/orca/cache/NameComputer;

    invoke-direct {v0}, Lcom/facebook/orca/cache/NameComputer;-><init>()V

    .line 82
    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/NameComputer;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->d:Ljava/util/Map;

    .line 83
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->e:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->e:Z

    .line 44
    return-void
.end method

.method public b(J)V
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->b:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iput-wide p1, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->e:Z

    .line 48
    return-void
.end method

.method public c(J)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/facebook/orca/cache/ThreadLocalState;->h:J

    .line 108
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->b:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    return-wide v0
.end method

.method public f()J
    .locals 4

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 75
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->c:J

    .line 77
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->b:J

    goto :goto_0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/facebook/orca/cache/ThreadLocalState;->h:J

    return-wide v0
.end method
