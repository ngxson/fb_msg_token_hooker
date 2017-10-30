.class public Lcom/facebook/orca/debug/OrcaErrorReporterImpl;
.super Ljava/lang/Object;
.source "OrcaErrorReporterImpl.java"

# interfaces
.implements Lcom/facebook/orca/debug/OrcaErrorReporter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 14
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    return-void
.end method
