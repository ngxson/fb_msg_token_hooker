.class Lcom/facebook/orca/sms/MmsSmsModule$MmsSendMessageHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MmsSmsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/sms/MmsSendMessageHandler;",
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
    .line 232
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsModule$MmsSendMessageHandlerProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSendMessageHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/sms/MmsSendMessageHandler;
    .locals 5

    .prologue
    .line 236
    new-instance v2, Lcom/facebook/orca/sms/MmsSendMessageHandler;

    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsModule$MmsSendMessageHandlerProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-static {v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Lcom/facebook/orca/sms/MmsSmsModule;)Landroid/content/Context;

    move-result-object v3

    const-class v0, Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSendMessageHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsContentResolverHandler;

    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsModule$MmsSendMessageHandlerProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-static {v1}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Lcom/facebook/orca/sms/MmsSmsModule;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/orca/sms/MmsSendMessageHandler;-><init>(Landroid/content/Context;Lcom/facebook/orca/sms/MmsContentResolverHandler;Landroid/net/ConnectivityManager;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/facebook/orca/sms/MmsSmsModule$MmsSendMessageHandlerProvider;->a()Lcom/facebook/orca/sms/MmsSendMessageHandler;

    move-result-object v0

    return-object v0
.end method
