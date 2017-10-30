.class public Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic$MmsSmsLogExternalMessagesService;
.super Landroid/app/IntentService;
.source "MmsSmsLogExternalMessagesLogic.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    const-string v0, "MmsSmsLogExternalMessagesService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 138
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 142
    invoke-static {p0}, Lcom/facebook/orca/app/AppInitLockHelper;->a(Landroid/content/Context;)V

    .line 144
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 145
    const-class v0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;

    .line 147
    invoke-virtual {v0}, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const-class v2, Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/sms/MmsSmsLogger;

    .line 149
    invoke-virtual {v0}, Lcom/facebook/orca/sms/MmsSmsLogExternalMessagesLogic;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/sms/MmsSmsLogger;->a(I)V

    .line 152
    invoke-virtual {v1}, Lcom/facebook/orca/sms/MmsSmsLogger;->b()V

    .line 154
    :cond_0
    return-void
.end method
