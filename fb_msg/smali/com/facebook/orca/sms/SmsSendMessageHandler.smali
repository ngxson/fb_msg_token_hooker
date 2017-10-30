.class public Lcom/facebook/orca/sms/SmsSendMessageHandler;
.super Ljava/lang/Object;
.source "SmsSendMessageHandler.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/facebook/orca/sms/SmsContentResolverHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/facebook/orca/sms/SmsSendMessageHandler;

    sput-object v0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->a:Ljava/lang/Class;

    .line 52
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->b:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/sms/SmsContentResolverHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->c:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->d:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    .line 62
    return-void
.end method


# virtual methods
.method a(Lcom/facebook/orca/threads/Message;Ljava/lang/String;)Lcom/facebook/orca/threads/Message;
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v6, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 71
    new-instance v7, Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;-><init>(Lcom/facebook/orca/sms/SmsSendMessageHandler$1;)V

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->c:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "SMS_SENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->c:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "SMS_DELIVERED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 77
    new-instance v9, Lcom/facebook/orca/sms/SmsSendMessageHandler$1;

    invoke-direct {v9, p0, v7, v6}, Lcom/facebook/orca/sms/SmsSendMessageHandler$1;-><init>(Lcom/facebook/orca/sms/SmsSendMessageHandler;Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;Ljava/util/concurrent/Semaphore;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "SMS_SENT"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    new-instance v10, Lcom/facebook/orca/sms/SmsSendMessageHandler$2;

    invoke-direct {v10, p0}, Lcom/facebook/orca/sms/SmsSendMessageHandler$2;-><init>(Lcom/facebook/orca/sms/SmsSendMessageHandler;)V

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "SMS_DELIVERED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 103
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 104
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 105
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_0

    .line 106
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    const/4 v2, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 112
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x78

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Semaphore could not acquire requested permits"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/facebook/orca/sms/SmsSendMessageHandler;->b:Lcom/facebook/orca/debug/WtfToken;

    sget-object v2, Lcom/facebook/orca/sms/SmsSendMessageHandler;->a:Ljava/lang/Class;

    const-string v3, "Send message timed out"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    throw v0

    .line 117
    :cond_1
    invoke-static {v7}, Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;->a(Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 118
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS send failed with code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;->a(Lcom/facebook/orca/sms/SmsSendMessageHandler$SendResultCode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->c:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->c:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->d:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    move-object v1, p2

    move-wide v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(Ljava/lang/String;Ljava/lang/String;JJI)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    .line 128
    if-nez v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/sms/SmsSendMessageHandler;->c:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Lcom/google/common/collect/Sets;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v0, v2}, Landroid_src/provider/Telephony$Threads;->a(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    .line 130
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_3
    new-instance v2, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    const-string v3, "sms"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/MessageBuilder;->f(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/threads/Message$ChannelSource;->SMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->v()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 142
    return-object v0
.end method
