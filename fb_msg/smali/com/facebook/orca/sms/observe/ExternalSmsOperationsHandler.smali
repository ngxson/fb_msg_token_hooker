.class public Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;
.super Ljava/lang/Object;
.source "ExternalSmsOperationsHandler.java"


# instance fields
.field private final a:Lcom/facebook/orca/sms/MmsSmsLogger;

.field private final b:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private final c:Lcom/facebook/orca/app/OrcaDataManager;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/sms/MmsSmsLogger;Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/app/OrcaDataManager;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;->b:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 28
    iput-object p3, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;->c:Lcom/facebook/orca/app/OrcaDataManager;

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Z)V

    .line 30
    iput-object p1, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;->a:Lcom/facebook/orca/sms/MmsSmsLogger;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 35
    new-instance v2, Lcom/facebook/orca/server/DeleteThreadParams;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/orca/server/DeleteThreadParams;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string v3, "deleteThreadParams"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    iget-object v2, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;->b:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v3, "delete_thread"

    invoke-virtual {v2, v3, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;->c:Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaDataManager;->f()V

    .line 42
    return-void
.end method
