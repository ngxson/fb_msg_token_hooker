.class Lcom/facebook/orca/database/DbServiceHandler$SendMessageException;
.super Ljava/lang/Exception;
.source "DbServiceHandler.java"

# interfaces
.implements Lcom/facebook/orca/common/base/ExceptionWithExtraData;


# instance fields
.field private final a:Lcom/facebook/orca/threads/Message;


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;Lcom/facebook/orca/threads/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 169
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    iput-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler$SendMessageException;->a:Lcom/facebook/orca/threads/Message;

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/database/DbServiceHandler$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/database/DbServiceHandler$SendMessageException;-><init>(Ljava/lang/Throwable;Lcom/facebook/orca/threads/Message;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler$SendMessageException;->a:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method
