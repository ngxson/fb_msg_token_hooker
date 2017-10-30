.class Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsSendMessageHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MmsSmsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/sms/MmsSmsModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/sms/MmsSmsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsSendMessageHandlerProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsSendMessageHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;
    .locals 8

    .prologue
    .line 207
    new-instance v0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;

    const-class v1, Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsSendMessageHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    const-class v2, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsSendMessageHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    const-class v3, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsSendMessageHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    const-class v4, Lcom/facebook/orca/sms/MmsSendMessageHandler;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsSendMessageHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/sms/MmsSendMessageHandler;

    const-class v5, Lcom/facebook/orca/sms/SmsSendMessageHandler;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsSendMessageHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/sms/SmsSendMessageHandler;

    const-class v6, Lcom/facebook/orca/sms/MmsSmsUserUtils;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsSendMessageHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/sms/MmsSmsUserUtils;

    const-class v7, Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsSendMessageHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;-><init>(Lcom/facebook/orca/protocol/methods/PickedUserUtils;Lcom/facebook/orca/threads/ThreadParticipantUtils;Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;Lcom/facebook/orca/sms/MmsSendMessageHandler;Lcom/facebook/orca/sms/SmsSendMessageHandler;Lcom/facebook/orca/sms/MmsSmsUserUtils;Lcom/facebook/orca/sms/MmsSmsLogger;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSmsSendMessageHandlerProvider;->a()Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;

    move-result-object v0

    return-object v0
.end method
