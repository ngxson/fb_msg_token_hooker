.class Lcom/facebook/common/util/FbErrorReporterImpl$1;
.super Ljava/lang/Object;
.source "FbErrorReporterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Throwable;


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 53
    :try_start_0
    const-class v1, Lcom/facebook/common/util/ErrorReporting;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :try_start_1
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    .line 55
    const-string v2, "soft_error_category"

    iget-object v3, p0, Lcom/facebook/common/util/FbErrorReporterImpl$1;->a:Ljava/lang/String;

    const-string v4, "\n"

    const-string v5, "\\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    const-string v2, "soft_error_message"

    iget-object v3, p0, Lcom/facebook/common/util/FbErrorReporterImpl$1;->b:Ljava/lang/String;

    const-string v4, "\n"

    const-string v5, "\\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/facebook/common/util/FbErrorReporterImpl$1;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportsSenderWorker;

    .line 60
    const-string v2, "soft_error_category"

    invoke-virtual {v0, v2}, Lorg/acra/ErrorReporter;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    const-string v2, "soft_error_message"

    invoke-virtual {v0, v2}, Lorg/acra/ErrorReporter;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    monitor-exit v1

    .line 66
    :goto_0
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method
