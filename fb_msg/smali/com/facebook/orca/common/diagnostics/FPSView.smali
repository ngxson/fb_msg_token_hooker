.class public Lcom/facebook/orca/common/diagnostics/FPSView;
.super Landroid/view/View;
.source "FPSView.java"


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
.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:I

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/facebook/orca/common/diagnostics/FPSView;

    sput-object v0, Lcom/facebook/orca/common/diagnostics/FPSView;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, -0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    iput-wide v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->b:J

    .line 34
    iput-wide v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->c:J

    .line 35
    iput-wide v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->d:J

    .line 36
    iput-wide v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->e:J

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->g:I

    .line 40
    iput-boolean v2, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->h:Z

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->j:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->j:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->j:Landroid/graphics/Paint;

    const/high16 v1, 0x41b0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->i:Ljava/util/List;

    .line 53
    return-void
.end method

.method private static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 136
    const/16 v0, 0x2d

    if-lt p0, v0, :cond_0

    .line 137
    const v0, -0xff0100

    .line 141
    :goto_0
    return v0

    .line 138
    :cond_0
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_1

    .line 139
    const/16 v0, -0x100

    goto :goto_0

    .line 141
    :cond_1
    const/high16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getFPS()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->g:I

    return v0
.end method

.method public getMaxMPF()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->e:J

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v2, -0x1

    const/4 v11, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    iget-wide v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->c:J

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->d:J

    .line 61
    iput v11, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->f:I

    .line 64
    :cond_0
    iget-wide v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->b:J

    .line 68
    :cond_1
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/diagnostics/FPSView;->setBackgroundColor(I)V

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 71
    iget-wide v3, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->c:J

    sub-long v3, v1, v3

    .line 72
    iget-wide v5, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->d:J

    sub-long v5, v1, v5

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->i:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-wide v7, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->b:J

    const-wide/16 v9, 0x1388

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    cmp-long v0, v3, v12

    if-lez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 82
    const/4 v7, 0x2

    if-le v0, v7, :cond_2

    .line 83
    iget-object v7, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->i:Ljava/util/List;

    div-int/lit8 v8, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v7, v8, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->i:Ljava/util/List;

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->e:J

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->j:Landroid/graphics/Paint;

    iget v7, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->g:I

    invoke-static {v7}, Lcom/facebook/orca/common/diagnostics/FPSView;->a(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->g:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " fps "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ms/f "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->e:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " max"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    const/high16 v5, 0x41a0

    const/high16 v6, 0x42ba

    iget-object v7, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 95
    iget-boolean v5, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->h:Z

    if-eqz v5, :cond_3

    .line 96
    sget-object v5, Lcom/facebook/orca/common/diagnostics/FPSView;->a:Ljava/lang/Class;

    invoke-static {v5}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_3
    cmp-long v0, v3, v12

    if-lez v0, :cond_4

    .line 100
    iput-wide v1, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->c:J

    .line 101
    iget v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->f:I

    iput v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->g:I

    .line 102
    iput v11, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->f:I

    .line 104
    :cond_4
    iput-wide v1, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->d:J

    .line 105
    iget v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->f:I

    .line 106
    return-void
.end method

.method public setEnableOutputToLogcat(Z)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/facebook/orca/common/diagnostics/FPSView;->h:Z

    .line 111
    return-void
.end method
