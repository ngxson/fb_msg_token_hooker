.class public Lcom/facebook/orca/photos/sizing/GraphicSizer;
.super Ljava/lang/Object;
.source "GraphicSizer.java"

# interfaces
.implements Lcom/facebook/orca/photos/sizing/GraphicOp;


# instance fields
.field private final a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

.field private final b:I

.field private final c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/photos/sizing/GraphicOp;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    .line 29
    iput p2, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->b:I

    .line 30
    iput p3, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->c:I

    .line 31
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a(II)V

    .line 32
    return-void
.end method

.method private a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->d:Ljava/util/List;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 75
    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->d:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a(Ljava/util/List;Landroid/graphics/Rect;)V

    .line 78
    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->d:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/photos/sizing/GraphicSizer;->b(Ljava/util/List;Landroid/graphics/Rect;)V

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->e:I

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->f:I

    .line 82
    return-void
.end method

.method private a(Ljava/util/List;Landroid/graphics/Rect;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/photos/sizing/GraphicOp;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->e()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->f()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->c()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->d()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b()Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b()Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->a()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->b()F

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;-><init>(Landroid/graphics/RectF;F)V

    .line 100
    invoke-virtual {v1, p2}, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a(Landroid/graphics/Rect;)V

    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v4

    .line 106
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 107
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 108
    if-le v0, v1, :cond_4

    .line 109
    new-instance v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->a()F

    move-result v1

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->b()F

    move-result v2

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->c()F

    move-result v3

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v5}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->c()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v6}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->d()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;-><init>(FFFLcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;II)V

    .line 118
    invoke-virtual {v0, p2}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a(Landroid/graphics/Rect;)V

    .line 119
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_3
    sget-object v4, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    goto :goto_1

    .line 121
    :cond_4
    new-instance v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->a()F

    move-result v1

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->b()F

    move-result v2

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->c()F

    move-result v3

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v4

    :goto_2
    iget-object v5, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v5}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->c()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v6}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->d()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;-><init>(FFFLcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;II)V

    .line 130
    invoke-virtual {v0, p2}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a(Landroid/graphics/Rect;)V

    .line 131
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 121
    :cond_5
    sget-object v4, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->TOP_OR_LEFT:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    goto :goto_2
.end method

.method private b(Ljava/util/List;Landroid/graphics/Rect;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/photos/sizing/GraphicOp;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->e()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->f()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 139
    new-instance v0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->e()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v2}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->f()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;-><init>(II)V

    .line 142
    invoke-virtual {v0, p2}, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->a(Landroid/graphics/Rect;)V

    .line 143
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/sizing/GraphicOp;

    .line 37
    invoke-interface {v0, p1}, Lcom/facebook/orca/photos/sizing/GraphicOp;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 39
    :cond_0
    return-object p1
.end method
