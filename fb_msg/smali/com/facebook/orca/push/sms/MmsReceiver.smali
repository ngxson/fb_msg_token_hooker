.class public Lcom/facebook/orca/push/sms/MmsReceiver;
.super Landroid/app/IntentService;
.source "MmsReceiver.java"


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
.field private c:Lcom/facebook/orca/sms/MmsReceiverWakeLockHolder;

.field private d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private e:Lcom/facebook/orca/sms/MmsSmsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/facebook/orca/push/sms/MmsReceiver;

    sput-object v0, Lcom/facebook/orca/push/sms/MmsReceiver;->a:Ljava/lang/Class;

    .line 43
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/push/sms/MmsReceiver;->b:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "MmsReceiver"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private a(Landroid_src/mms/pdu/GenericPdu;I)J
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x3d

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 240
    const/16 v0, 0x86

    if-ne p2, v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/String;

    check-cast p1, Landroid_src/mms/pdu/DeliveryInd;

    invoke-virtual {p1}, Landroid_src/mms/pdu/DeliveryInd;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 246
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 247
    const-string v1, "m_id"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v0, " AND "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v0, "m_type"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    const/16 v0, 0x80

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p0}, Lcom/facebook/orca/push/sms/MmsReceiver;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid_src/provider/Telephony$Mms;->a:Landroid/net/Uri;

    new-array v3, v7, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid_src/mms/util/SqliteWrapper;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 260
    if-eqz v2, :cond_2

    .line 262
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 266
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 269
    :goto_1
    return-wide v0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/String;

    check-cast p1, Landroid_src/mms/pdu/ReadOrigInd;

    invoke-virtual {p1}, Landroid_src/mms/pdu/ReadOrigInd;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 266
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 266
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Landroid_src/mms/pdu/GenericPdu;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    const-string v1, "\n     Message Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid_src/mms/pdu/GenericPdu;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, "\n      Mms Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid_src/mms/pdu/GenericPdu;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "\n             From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid_src/mms/pdu/GenericPdu;->h()Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-virtual {v2}, Landroid_src/mms/pdu/EncodedStringValue;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p1}, Landroid_src/mms/pdu/GenericPdu;->f()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 288
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :sswitch_0
    check-cast p1, Landroid_src/mms/pdu/DeliveryInd;

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/push/sms/MmsReceiver;->a(Landroid_src/mms/pdu/DeliveryInd;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 282
    :sswitch_1
    check-cast p1, Landroid_src/mms/pdu/ReadOrigInd;

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/push/sms/MmsReceiver;->a(Landroid_src/mms/pdu/ReadOrigInd;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 285
    :sswitch_2
    check-cast p1, Landroid_src/mms/pdu/NotificationInd;

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/push/sms/MmsReceiver;->a(Landroid_src/mms/pdu/NotificationInd;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_2
        0x86 -> :sswitch_0
        0x88 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Landroid_src/mms/pdu/DeliveryInd;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 292
    const-string v0, "\n             Date:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid_src/mms/pdu/DeliveryInd;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 293
    const-string v0, "\n       Message Id:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid_src/mms/pdu/DeliveryInd;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v0, "\n           Status:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid_src/mms/pdu/DeliveryInd;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p1}, Landroid_src/mms/pdu/DeliveryInd;->d()[Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 296
    if-eqz v3, :cond_0

    .line 297
    const-string v4, "\n               To:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid_src/mms/pdu/EncodedStringValue;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_1
    return-object p2
.end method

.method private a(Landroid_src/mms/pdu/NotificationInd;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 316
    const-string v0, "\n    Content Class: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid_src/mms/pdu/NotificationInd;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    const-string v0, "\n Content Location: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid_src/mms/pdu/NotificationInd;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v0, "\n           Expiry: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid_src/mms/pdu/NotificationInd;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 319
    const-string v0, "\n    Message Class: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid_src/mms/pdu/NotificationInd;->d()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v0, "\n     Message Size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid_src/mms/pdu/NotificationInd;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 321
    const-string v0, "\n          Subject: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid_src/mms/pdu/NotificationInd;->j()Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    const-string v0, "\n   Transaction Id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid_src/mms/pdu/NotificationInd;->k()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v0, "\n  Delivery Report: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid_src/mms/pdu/NotificationInd;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    return-object p2
.end method

.method private a(Landroid_src/mms/pdu/ReadOrigInd;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 304
    const-string v0, "\n             Date: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid_src/mms/pdu/ReadOrigInd;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 305
    const-string v0, "\n       Message Id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid_src/mms/pdu/ReadOrigInd;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v0, "\n      Read Status: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid_src/mms/pdu/ReadOrigInd;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p1}, Landroid_src/mms/pdu/ReadOrigInd;->d()[Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 308
    if-eqz v3, :cond_0

    .line 309
    const-string v4, "\n               To:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid_src/mms/pdu/EncodedStringValue;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_1
    return-object p2
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/sms/MmsReceiverWakeLockHolder;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsReceiverWakeLockHolder;

    .line 72
    iget-object v0, v0, Lcom/facebook/orca/sms/MmsReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->a()V

    .line 74
    const-class v0, Lcom/facebook/orca/push/sms/MmsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 114
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 115
    new-instance v2, Landroid_src/mms/pdu/PduParser;

    invoke-direct {v2, v1}, Landroid_src/mms/pdu/PduParser;-><init>([B)V

    .line 116
    invoke-virtual {v2}, Landroid_src/mms/pdu/PduParser;->a()Landroid_src/mms/pdu/GenericPdu;

    move-result-object v3

    .line 118
    if-nez v3, :cond_0

    .line 119
    sget-object v1, Lcom/facebook/orca/push/sms/MmsReceiver;->a:Ljava/lang/Class;

    const-string v2, "Invalid PUSH data"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    sget-object v1, Lcom/facebook/orca/push/sms/MmsReceiver;->a:Ljava/lang/Class;

    const-string v2, "Received MMS msg: \n%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/facebook/orca/push/sms/MmsReceiver;->a(Landroid_src/mms/pdu/GenericPdu;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_1
    invoke-static {p0}, Landroid_src/mms/pdu/PduPersister;->a(Landroid/content/Context;)Landroid_src/mms/pdu/PduPersister;

    move-result-object v4

    .line 129
    invoke-virtual {p0}, Lcom/facebook/orca/push/sms/MmsReceiver;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 130
    invoke-virtual {v3}, Landroid_src/mms/pdu/GenericPdu;->f()I

    move-result v7

    .line 134
    sparse-switch v7, :sswitch_data_0

    .line 184
    :try_start_0
    sget-object v1, Lcom/facebook/orca/push/sms/MmsReceiver;->a:Ljava/lang/Class;

    const-string v2, "Received unrecognized PDU."

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid_src/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :cond_2
    :goto_1
    sget-object v1, Lcom/facebook/orca/push/sms/MmsReceiver;->a:Ljava/lang/Class;

    const-string v2, "PUSH Intent processed."

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :sswitch_0
    :try_start_1
    invoke-direct {p0, v3, v7}, Lcom/facebook/orca/push/sms/MmsReceiver;->a(Landroid_src/mms/pdu/GenericPdu;I)J

    move-result-wide v5

    .line 138
    const-wide/16 v8, -0x1

    cmp-long v1, v5, v8

    if-eqz v1, :cond_2

    .line 144
    sget-object v1, Landroid_src/provider/Telephony$Mms$Inbox;->a:Landroid/net/Uri;

    invoke-virtual {v4, v3, v1}, Landroid_src/mms/pdu/PduPersister;->a(Landroid_src/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 146
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 147
    const-string v1, "thread_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroid_src/mms/util/SqliteWrapper;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid_src/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 186
    :catch_0
    move-exception v1

    .line 187
    sget-object v2, Lcom/facebook/orca/push/sms/MmsReceiver;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save the data from PUSH: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 152
    :sswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/facebook/orca/push/sms/MmsReceiver;->e:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v1}, Lcom/facebook/orca/sms/MmsSmsLogger;->a()V

    .line 153
    move-object v0, v3

    check-cast v0, Landroid_src/mms/pdu/NotificationInd;

    move-object v1, v0

    .line 155
    invoke-static {}, Landroid_src/mms/MmsConfig;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    invoke-virtual {v1}, Landroid_src/mms/pdu/NotificationInd;->b()[B

    move-result-object v2

    .line 157
    const/16 v5, 0x3d

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v2, v6

    if-ne v5, v6, :cond_3

    .line 158
    invoke-virtual {v1}, Landroid_src/mms/pdu/NotificationInd;->k()[B

    move-result-object v5

    .line 159
    array-length v6, v2

    array-length v8, v5

    add-int/2addr v6, v8

    new-array v6, v6, [B

    .line 161
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v2

    invoke-static {v2, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    const/4 v8, 0x0

    array-length v2, v2

    array-length v9, v5

    invoke-static {v5, v8, v6, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    invoke-virtual {v1, v6}, Landroid_src/mms/pdu/NotificationInd;->a([B)V

    .line 169
    :cond_3
    invoke-direct {p0, v1}, Lcom/facebook/orca/push/sms/MmsReceiver;->a(Landroid_src/mms/pdu/NotificationInd;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 170
    sget-object v1, Landroid_src/provider/Telephony$Mms$Inbox;->a:Landroid/net/Uri;

    invoke-virtual {v4, v3, v1}, Landroid_src/mms/pdu/PduPersister;->a(Landroid_src/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Landroid_src/mms/ClassesToUse;->a:Ljava/lang/Class;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    const-string v3, "uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "type"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v2}, Lcom/facebook/orca/push/sms/MmsReceiver;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Landroid_src/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 188
    :catch_1
    move-exception v1

    .line 189
    sget-object v2, Lcom/facebook/orca/push/sms/MmsReceiver;->a:Ljava/lang/Class;

    const-string v3, "Unexpected Exception."

    invoke-static {v2, v3, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 178
    :cond_4
    :try_start_3
    sget-object v2, Lcom/facebook/orca/push/sms/MmsReceiver;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip downloading duplicate message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Landroid_src/mms/pdu/NotificationInd;->b()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid_src/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 134
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid_src/mms/pdu/NotificationInd;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 205
    invoke-virtual {p1}, Landroid_src/mms/pdu/NotificationInd;->b()[B

    move-result-object v0

    .line 206
    if-eqz v0, :cond_1

    .line 207
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 208
    const-string v4, "ct_l = ?"

    .line 209
    new-array v5, v7, [Ljava/lang/String;

    aput-object v1, v5, v8

    .line 210
    invoke-virtual {p0}, Lcom/facebook/orca/push/sms/MmsReceiver;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid_src/provider/Telephony$Mms;->a:Landroid/net/Uri;

    new-array v3, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v8

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid_src/mms/util/SqliteWrapper;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_1

    .line 216
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    .line 221
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 225
    :goto_0
    return v0

    .line 221
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 225
    goto :goto_0

    .line 221
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 95
    sget-object v0, Lcom/facebook/orca/push/sms/MmsReceiver;->a:Ljava/lang/Class;

    const-string v1, "Received onMessage"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p2}, Lcom/facebook/orca/push/sms/MmsReceiver;->a(Landroid/content/Intent;)V

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/push/sms/MmsReceiver;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->d:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 102
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 57
    invoke-static {p0}, Lcom/facebook/orca/app/AppInitLockHelper;->a(Landroid/content/Context;)V

    .line 58
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 59
    const-class v0, Lcom/facebook/orca/sms/MmsReceiverWakeLockHolder;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsReceiverWakeLockHolder;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/MmsReceiver;->c:Lcom/facebook/orca/sms/MmsReceiverWakeLockHolder;

    .line 60
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/MmsReceiver;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 61
    const-class v0, Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsSmsLogger;

    iput-object v0, p0, Lcom/facebook/orca/push/sms/MmsReceiver;->e:Lcom/facebook/orca/sms/MmsSmsLogger;

    .line 62
    return-void
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    :try_start_0
    invoke-direct {p0, p0, p1}, Lcom/facebook/orca/push/sms/MmsReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/push/sms/MmsReceiver;->c:Lcom/facebook/orca/sms/MmsReceiverWakeLockHolder;

    iget-object v0, v0, Lcom/facebook/orca/sms/MmsReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/push/sms/MmsReceiver;->c:Lcom/facebook/orca/sms/MmsReceiverWakeLockHolder;

    iget-object v1, v1, Lcom/facebook/orca/sms/MmsReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v1}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    throw v0
.end method
