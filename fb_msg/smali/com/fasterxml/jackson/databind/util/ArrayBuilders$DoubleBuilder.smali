.class public final Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;
.super Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder",
        "<[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic _constructArray(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;->_constructArray(I)[D

    move-result-object v0

    return-object v0
.end method

.method public final _constructArray(I)[D
    .locals 1
    .parameter

    .prologue
    .line 136
    new-array v0, p1, [D

    return-object v0
.end method
