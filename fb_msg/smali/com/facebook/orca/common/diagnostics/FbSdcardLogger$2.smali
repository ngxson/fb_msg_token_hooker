.class Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$2;
.super Ljava/lang/Object;
.source "FbSdcardLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$2;->d:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;

    iput p2, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$2;->a:I

    iput-object p3, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$2;->d:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;

    invoke-static {v0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->b(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;)Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;

    move-result-object v0

    iget v1, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$2;->a:I

    iget-object v2, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->a(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method
