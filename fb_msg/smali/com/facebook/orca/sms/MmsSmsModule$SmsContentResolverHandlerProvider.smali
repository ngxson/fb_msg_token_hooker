.class Lcom/facebook/orca/sms/MmsSmsModule$SmsContentResolverHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MmsSmsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/sms/SmsContentResolverHandler;",
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
    .line 264
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsModule$SmsContentResolverHandlerProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsSmsModule$SmsContentResolverHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/sms/SmsContentResolverHandler;
    .locals 3

    .prologue
    .line 269
    new-instance v1, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsModule$SmsContentResolverHandlerProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-static {v0}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Lcom/facebook/orca/sms/MmsSmsModule;)Landroid/content/Context;

    move-result-object v2

    const-class v0, Lcom/facebook/orca/sms/MmsSmsUserUtils;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule$SmsContentResolverHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsSmsUserUtils;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/sms/SmsContentResolverHandler;-><init>(Landroid/content/Context;Lcom/facebook/orca/sms/MmsSmsUserUtils;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/facebook/orca/sms/MmsSmsModule$SmsContentResolverHandlerProvider;->a()Lcom/facebook/orca/sms/SmsContentResolverHandler;

    move-result-object v0

    return-object v0
.end method
