.class public Lcom/facebook/common/util/DefaultTimeFormatUtil;
.super Ljava/lang/Object;
.source "DefaultTimeFormatUtil.java"

# interfaces
.implements Lcom/facebook/common/util/TimeFormatUtil;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/util/DefaultTimeFormatUtil;->a:Landroid/content/Context;

    .line 24
    return-void
.end method
