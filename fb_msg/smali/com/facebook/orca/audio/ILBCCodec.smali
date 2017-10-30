.class public Lcom/facebook/orca/audio/ILBCCodec;
.super Ljava/lang/Object;
.source "ILBCCodec.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "ilbc-codec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/facebook/orca/audio/ILBCCodec;->init(I)I

    .line 37
    return-void
.end method

.method private native init(I)I
.end method
