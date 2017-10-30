.class public Lcom/facebook/orca/server/ErrorCodeUtil;
.super Ljava/lang/Object;
.source "ErrorCodeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/facebook/orca/server/ErrorCode;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->HTTP_400_AUTHENTICATION:Lcom/facebook/orca/server/ErrorCode;

    .line 29
    :goto_0
    return-object v0

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->HTTP_400_OTHER:Lcom/facebook/orca/server/ErrorCode;

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->c(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->HTTP_500_CLASS:Lcom/facebook/orca/server/ErrorCode;

    goto :goto_0

    .line 24
    :cond_2
    instance-of v0, p0, Lcom/facebook/orca/protocol/base/ApiException;

    if-eqz v0, :cond_3

    .line 25
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->API_ERROR:Lcom/facebook/orca/server/ErrorCode;

    goto :goto_0

    .line 26
    :cond_3
    invoke-static {p0}, Lcom/facebook/orca/common/http/ProtocolExceptions;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->CONNECTION_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    goto :goto_0

    .line 29
    :cond_4
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->OTHER:Lcom/facebook/orca/server/ErrorCode;

    goto :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string v1, "originalExceptionMessage"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "originalExceptionStack"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    instance-of v1, p0, Lcom/facebook/orca/common/base/ExceptionWithExtraData;

    if-eqz v1, :cond_0

    .line 38
    check-cast p0, Lcom/facebook/orca/common/base/ExceptionWithExtraData;

    .line 39
    const-string v1, "result"

    invoke-interface {p0}, Lcom/facebook/orca/common/base/ExceptionWithExtraData;->a()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    :cond_0
    return-object v0
.end method
