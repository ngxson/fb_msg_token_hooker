.class public Lcom/facebook/common/util/FbErrorReporterImpl;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"

# interfaces
.implements Lcom/facebook/common/util/FbErrorReporter;


# instance fields
.field final a:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/util/FbErrorReporterImpl;->a:Ljava/util/Random;

    return-void
.end method
