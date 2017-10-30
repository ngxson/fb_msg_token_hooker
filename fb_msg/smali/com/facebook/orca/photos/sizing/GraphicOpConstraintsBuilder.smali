.class public Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
.super Ljava/lang/Object;
.source "GraphicOpConstraintsBuilder.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

.field private f:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x3c

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a:I

    .line 11
    const/16 v0, 0x28

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b:I

    .line 12
    const/16 v0, 0x78

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c:I

    .line 13
    const/16 v0, 0x50

    iput v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a:I

    return v0
.end method

.method public a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a:I

    .line 25
    return-object p0
.end method

.method public a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->e:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    .line 62
    return-object p0
.end method

.method public a(Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->f:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    .line 72
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h:Z

    .line 91
    return-object p0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b:I

    return v0
.end method

.method public b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b:I

    .line 34
    return-object p0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c:I

    return v0
.end method

.method public c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c:I

    .line 43
    return-object p0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d:I

    return v0
.end method

.method public d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;
    .locals 0
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d:I

    .line 52
    return-object p0
.end method

.method public e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->e:Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    return-object v0
.end method

.method public f()Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->f:Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h:Z

    return v0
.end method

.method public i()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-direct {v0, p0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;-><init>(Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;)V

    return-object v0
.end method
