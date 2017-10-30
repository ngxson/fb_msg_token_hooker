.class public Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
.super Ljava/lang/Object;
.source "GraphicOpConstraints.java"


# instance fields
.field private final a:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

.field private final b:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Z

.field private final h:Z

.field private volatile i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    .line 29
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->f()Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    .line 30
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->c:I

    .line 31
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->d:I

    .line 32
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->e:I

    .line 33
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->f:I

    .line 34
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->g:Z

    .line 35
    invoke-virtual {p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->h:Z

    .line 37
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->f:I

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->h:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 7

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->g:Z

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/facebook/orca/images/UrlImageProcessor;->a:Ljava/lang/String;

    .line 84
    :goto_0
    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 73
    const-string v0, ":"

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    const-string v2, "3"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->e()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->c()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget v5, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    iget v5, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    iget v5, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    iget v5, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x5

    iget-boolean v5, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->h:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->e(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->i:Ljava/lang/String;

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 73
    :cond_2
    const-string v0, "null"

    goto :goto_1

    :cond_3
    const-string v0, "null"

    goto :goto_2
.end method
