.class public Lcom/facebook/orca/common/util/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lcom/facebook/orca/common/util/Clock;


# static fields
.field private static final a:Lcom/facebook/orca/common/util/SystemClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/facebook/orca/common/util/SystemClock;

    invoke-direct {v0}, Lcom/facebook/orca/common/util/SystemClock;-><init>()V

    sput-object v0, Lcom/facebook/orca/common/util/SystemClock;->a:Lcom/facebook/orca/common/util/SystemClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static b()Lcom/facebook/orca/common/util/SystemClock;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/facebook/orca/common/util/SystemClock;->a:Lcom/facebook/orca/common/util/SystemClock;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method