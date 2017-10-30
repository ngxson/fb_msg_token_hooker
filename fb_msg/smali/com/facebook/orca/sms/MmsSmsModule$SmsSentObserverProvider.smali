.class Lcom/facebook/orca/sms/MmsSmsModule$SmsSentObserverProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MmsSmsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;",
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
    .line 306
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsModule$SmsSentObserverProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsSmsModule$SmsSentObserverProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;
    .locals 6

    .prologue
    .line 311
    new-instance v0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;

    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsModule$SmsSentObserverProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-static {v1}, Lcom/facebook/orca/sms/MmsSmsModule;->a(Lcom/facebook/orca/sms/MmsSmsModule;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$SmsSentObserverProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    const-class v3, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/sms/MmsSmsModule$SmsSentObserverProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    const-class v4, Ljava/lang/Boolean;

    const-class v5, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/orca/sms/MmsSmsModule$SmsSentObserverProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v4

    const-class v5, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/sms/MmsSmsModule$SmsSentObserverProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;-><init>(Landroid/content/ContentResolver;Lcom/facebook/orca/database/ThreadsDatabaseSupplier;Lcom/facebook/orca/notify/OrcaForegroundActivityListener;Ljavax/inject/Provider;Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/facebook/orca/sms/MmsSmsModule$SmsSentObserverProvider;->a()Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;

    move-result-object v0

    return-object v0
.end method
