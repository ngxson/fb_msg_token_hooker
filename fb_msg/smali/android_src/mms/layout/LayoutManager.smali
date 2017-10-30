.class public Landroid_src/mms/layout/LayoutManager;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# static fields
.field private static b:Landroid_src/mms/layout/LayoutManager;


# instance fields
.field private a:Landroid_src/mms/layout/LayoutParameters;


# direct methods
.method public static a()Landroid_src/mms/layout/LayoutManager;
    .locals 2

    .prologue
    .line 78
    sget-object v0, Landroid_src/mms/layout/LayoutManager;->b:Landroid_src/mms/layout/LayoutManager;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    sget-object v0, Landroid_src/mms/layout/LayoutManager;->b:Landroid_src/mms/layout/LayoutManager;

    return-object v0
.end method


# virtual methods
.method public b()Landroid_src/mms/layout/LayoutParameters;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid_src/mms/layout/LayoutManager;->a:Landroid_src/mms/layout/LayoutParameters;

    return-object v0
.end method
