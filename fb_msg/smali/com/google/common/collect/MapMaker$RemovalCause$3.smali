.class final enum Lcom/google/common/collect/MapMaker$RemovalCause$3;
.super Lcom/google/common/collect/MapMaker$RemovalCause;
.source "MapMaker.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 872
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMaker$RemovalCause;-><init>(Ljava/lang/String;ILcom/google/common/collect/MapMaker$1;)V

    return-void
.end method


# virtual methods
.method wasEvicted()Z
    .locals 1

    .prologue
    .line 875
    const/4 v0, 0x1

    return v0
.end method
