.class public Landroid_src/mms/layout/HVGALayoutParameters;
.super Ljava/lang/Object;
.source "HVGALayoutParameters.java"

# interfaces
.implements Landroid_src/mms/layout/LayoutParameters;


# instance fields
.field private a:I


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Landroid_src/mms/layout/HVGALayoutParameters;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1e0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x140

    goto :goto_0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Landroid_src/mms/layout/HVGALayoutParameters;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/16 v0, 0x140

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e0

    goto :goto_0
.end method
