.class public abstract Lcom/google/common/collect/GenericMapMaker;
.super Ljava/lang/Object;
.source "GenericMapMaker.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/MapMaker$RemovalListener;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$RemovalListener",
            "<TK0;TV0;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/MapMaker$RemovalListener;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/MapMaker$RemovalListener",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/common/collect/GenericMapMaker;->a:Lcom/google/common/collect/MapMaker$RemovalListener;

    sget-object v1, Lcom/google/common/collect/GenericMapMaker$NullListener;->INSTANCE:Lcom/google/common/collect/GenericMapMaker$NullListener;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$RemovalListener;

    return-object v0
.end method
