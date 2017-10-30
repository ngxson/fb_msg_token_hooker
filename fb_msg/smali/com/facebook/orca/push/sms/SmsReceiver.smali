.class public Lcom/facebook/orca/push/sms/SmsReceiver;
.super Landroid/app/IntentService;
.source "SmsReceiver.java"


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
.field private c:Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

.field private d:Lcom/facebook/orca/push/common/PushDeserialization;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/PushHandler;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private g:Lcom/facebook/orca/sms/SmsContentResolverHandler;

.field private h:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

.field private i:Z

.field private j:Lcom/facebook/orca/sms/MmsSmsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/facebook/orca/push/sms/SmsReceiver;

    sput-object v0, Lcom/facebook/orca/push/sms/SmsReceiver;->a:Ljava/lang/Class;

    .line 39
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/push/sms/SmsReceiver;->b:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "SmsReceiver"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private a(Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    const-string v1, "\n  Display Originating Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, "\n                 Message Body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, "\n         Display Message Body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, "\n                    Timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, "\n                Message Class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "\n          Originating Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, "\n          Protocol Identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "\n                   Email Body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getEmailBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "\n                   Email From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getEmailFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "\n               Pseudo Subject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "\n                       Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, "\n                Status on Icc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnIcc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "\n                 Index On Icc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "\n                 Index on Sim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getIndexOnSim()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "\n                Status on Sim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnSim()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "\n       Service Center Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, "\n                    User Data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/telephony/SmsMessage;J)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    .line 188
    iget-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->g:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(Ljava/lang/String;Ljava/lang/String;JJI)Ljava/lang/String;

    move-result-object v0

    .line 194
    return-object v0
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    .line 78
    iget-object v0, v0, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->a()V

    .line 80
    const-class v0, Lcom/facebook/orca/push/sms/SmsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    return-void
.end method

.method private b(Landroid/telephony/SmsMessage;)J
    .locals 4
    .parameter

    .prologue
    .line 201
    new-instance v2, Ljava/util/GregorianCalendar;

    const/16 v0, 0x7db

    const/16 v1, 0x8

    const/16 v3, 0x12

    invoke-direct {v2, v0, v1, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 202
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 204
    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 206
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v0

    .line 212
    :cond_0
    return-wide v0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 101
    sget-object v0, Lcom/facebook/orca/push/sms/SmsReceiver;->a:Ljava/lang/Class;

    const-string v1, "Received onMessage"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->d:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v0, v1, v5, v6}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 117
    array-length v1, v0

    new-array v6, v1, [Landroid/telephony/SmsMessage;

    move v2, v3

    .line 118
    :goto_0
    array-length v1, v6

    if-ge v2, v1, :cond_4

    .line 119
    aget-object v1, v0, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v6, v2

    .line 120
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lcom/facebook/orca/push/sms/SmsReceiver;->a:Ljava/lang/Class;

    const-string v5, "Received SMS msg: \n%s"

    new-array v7, v11, [Ljava/lang/Object;

    aget-object v8, v6, v2

    invoke-direct {p0, v8}, Lcom/facebook/orca/push/sms/SmsReceiver;->a(Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v1, v5, v7}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_0
    :try_start_0
    aget-object v1, v6, v2

    invoke-direct {p0, v1}, Lcom/facebook/orca/push/sms/SmsReceiver;->b(Landroid/telephony/SmsMessage;)J

    move-result-wide v7

    .line 129
    iget-boolean v1, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->i:Z

    if-eqz v1, :cond_1

    .line 130
    aget-object v1, v6, v2

    invoke-direct {p0, v1, v7, v8}, Lcom/facebook/orca/push/sms/SmsReceiver;->a(Landroid/telephony/SmsMessage;J)Ljava/lang/String;

    move-result-object v1

    .line 131
    iget-object v5, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->d:Lcom/facebook/orca/push/common/PushDeserialization;

    aget-object v9, v6, v2

    invoke-virtual {v5, v9, v1, v7, v8}, Lcom/facebook/orca/push/common/PushDeserialization;->a(Landroid/telephony/SmsMessage;Ljava/lang/String;J)Lcom/facebook/orca/threads/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 141
    :goto_1
    if-eqz v5, :cond_2

    .line 142
    :try_start_1
    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v7

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ": "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v8, v6, v2

    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 145
    iget-object v1, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/push/PushHandler;

    .line 146
    sget-object v10, Lcom/facebook/orca/push/PushSource;->SMS:Lcom/facebook/orca/push/PushSource;

    invoke-interface {v1, v8, v7, v5, v10}, Lcom/facebook/orca/push/PushHandler;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 149
    :catch_0
    move-exception v1

    .line 150
    :goto_3
    :try_start_2
    sget-object v7, Lcom/facebook/orca/push/sms/SmsReceiver;->b:Lcom/facebook/orca/debug/WtfToken;

    sget-object v8, Lcom/facebook/orca/push/sms/SmsReceiver;->a:Ljava/lang/Class;

    invoke-static {v7, v8, v1}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    if-eqz v5, :cond_5

    .line 155
    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    .line 157
    :goto_4
    iget-object v5, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->j:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v5, v1, v3}, Lcom/facebook/orca/sms/MmsSmsLogger;->b(Ljava/lang/String;Z)V

    .line 118
    :goto_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    .line 136
    :cond_1
    :try_start_3
    aget-object v1, v6, v2

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v5, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->h:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    invoke-virtual {v5, v1}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v5, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->h:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    invoke-virtual {v5, v1}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto :goto_1

    .line 154
    :cond_2
    if-eqz v5, :cond_6

    .line 155
    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    .line 157
    :goto_6
    iget-object v5, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->j:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v5, v1, v11}, Lcom/facebook/orca/sms/MmsSmsLogger;->b(Ljava/lang/String;Z)V

    goto :goto_5

    .line 153
    :catchall_0
    move-exception v0

    move-object v5, v4

    .line 154
    :goto_7
    if-eqz v5, :cond_3

    .line 155
    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v4

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->j:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v1, v4, v11}, Lcom/facebook/orca/sms/MmsSmsLogger;->b(Ljava/lang/String;Z)V

    .line 158
    throw v0

    .line 162
    :cond_4
    return-void

    .line 153
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 149
    :catch_1
    move-exception v1

    move-object v5, v4

    goto :goto_3

    :cond_5
    move-object v1, v4

    goto :goto_4

    :cond_6
    move-object v1, v4

    goto :goto_6
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 58
    invoke-static {p0}, Lcom/facebook/orca/app/AppInitLockHelper;->a(Landroid/content/Context;)V

    .line 59
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 60
    new-instance v0, Lcom/facebook/orca/push/sms/SmsReceiver$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/sms/SmsReceiver$1;-><init>(Lcom/facebook/orca/push/sms/SmsReceiver;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->e:Ljava/util/Set;

    .line 61
    const-class v0, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->c:Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    .line 62
    const-class v0, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/common/PushDeserialization;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->d:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 63
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 64
    const-class v0, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->g:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    .line 65
    const-class v0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->h:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    .line 66
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsSmsNotifyEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->i:Z

    .line 67
    const-class v0, Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsSmsLogger;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->j:Lcom/facebook/orca/sms/MmsSmsLogger;

    .line 68
    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    :try_start_0
    invoke-direct {p0, p0, p1}, Lcom/facebook/orca/push/sms/SmsReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->c:Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    iget-object v0, v0, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/push/sms/SmsReceiver;->c:Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    iget-object v1, v1, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v1}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    throw v0
.end method
