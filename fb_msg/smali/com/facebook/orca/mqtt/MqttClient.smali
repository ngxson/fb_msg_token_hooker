.class public Lcom/facebook/orca/mqtt/MqttClient;
.super Ljava/lang/Object;
.source "MqttClient.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/orca/mqtt/MqttSsl;

.field private final c:Lcom/facebook/orca/mqtt/MqttParameters;

.field private d:J

.field private e:J

.field private f:Ljava/net/Socket;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private g:Lcom/facebook/orca/mqtt/serialization/MessageDecoder;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private h:Lcom/facebook/orca/mqtt/serialization/MessageEncoder;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private i:Ljava/lang/Thread;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile k:Lcom/facebook/orca/mqtt/MqttClient$State;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this for writes"
    .end annotation
.end field

.field private volatile l:Lcom/facebook/orca/mqtt/MqttClientCallback;

.field private m:Lcom/google/common/io/CountingInputStream;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private n:Lcom/google/common/io/CountingOutputStream;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/facebook/orca/mqtt/MqttClient;

    sput-object v0, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/mqtt/MqttSsl;Lcom/facebook/orca/mqtt/MqttParameters;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient$State;->INIT:Lcom/facebook/orca/mqtt/MqttClient$State;

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    .line 95
    iput-object p1, p0, Lcom/facebook/orca/mqtt/MqttClient;->b:Lcom/facebook/orca/mqtt/MqttSsl;

    .line 96
    iput-object p2, p0, Lcom/facebook/orca/mqtt/MqttClient;->c:Lcom/facebook/orca/mqtt/MqttParameters;

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mqtt/MqttClient;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->g()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mqtt/MqttClient;Ljava/lang/String;[BIZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/facebook/orca/mqtt/MqttClient;->a(Ljava/lang/String;[BIZI)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mqtt/MqttClient;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/MqttClient;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/serialization/MessageEncoder;Lcom/facebook/orca/mqtt/MqttParameters;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 444
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 445
    const-string v1, "uid"

    invoke-virtual {p2}, Lcom/facebook/orca/mqtt/MqttParameters;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 446
    const-string v1, "agent"

    invoke-virtual {p2}, Lcom/facebook/orca/mqtt/MqttParameters;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 447
    const-string v1, "no_automatic_foreground"

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 449
    invoke-static {}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->newBuilder()Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->a(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v1

    .line 452
    new-instance v2, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->a(I)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->a(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->b(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/orca/mqtt/MqttParameters;->e()S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->c(I)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/orca/mqtt/MqttParameters;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->e(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->i()Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;

    move-result-object v2

    .line 459
    new-instance v3, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/facebook/orca/mqtt/MqttParameters;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/orca/mqtt/MqttParameters;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->f()Lcom/facebook/orca/mqtt/messages/ConnectPayload;

    move-result-object v0

    .line 465
    new-instance v3, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;

    invoke-direct {v3, v1, v2, v0}, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;Lcom/facebook/orca/mqtt/messages/ConnectPayload;)V

    .line 466
    invoke-virtual {p1, v3}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/MqttMessage;)V

    .line 467
    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/serialization/MessageEncoder;Ljava/lang/String;[BII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 503
    invoke-static {}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->newBuilder()Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->a(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->b(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v0

    .line 507
    new-instance v1, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;

    invoke-direct {v1, p2, p5}, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;-><init>(Ljava/lang/String;I)V

    .line 508
    new-instance v2, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;

    invoke-direct {v2, v0, v1, p3}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;[B)V

    .line 509
    invoke-virtual {p1, v2}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/MqttMessage;)V

    .line 510
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    invoke-interface {v0, p5}, Lcom/facebook/orca/mqtt/MqttClientCallback;->b(I)V

    .line 513
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/serialization/MessageEncoder;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/mqtt/serialization/MessageEncoder;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/mqtt/messages/SubscribeTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    invoke-static {}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->newBuilder()Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->a(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v0

    .line 474
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->k()I

    move-result v1

    .line 475
    new-instance v2, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    invoke-direct {v2, v1}, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;-><init>(I)V

    .line 476
    new-instance v3, Lcom/facebook/orca/mqtt/messages/SubscribePayload;

    invoke-direct {v3, p2}, Lcom/facebook/orca/mqtt/messages/SubscribePayload;-><init>(Ljava/util/List;)V

    .line 477
    new-instance v4, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;

    invoke-direct {v4, v0, v2, v3}, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;Lcom/facebook/orca/mqtt/messages/SubscribePayload;)V

    .line 479
    invoke-virtual {p1, v4}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/MqttMessage;)V

    .line 480
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    invoke-interface {v0, v1}, Lcom/facebook/orca/mqtt/MqttClientCallback;->b(I)V

    .line 483
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;[BIZI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->j()V

    .line 425
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/serialization/MessageEncoder;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/mqtt/MqttClient;->a(Lcom/facebook/orca/mqtt/serialization/MessageEncoder;Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    const-string v2, "Caught exception trying to publish"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 431
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->i()V

    goto :goto_0
.end method

.method private a(Ljava/net/Socket;Lcom/facebook/orca/mqtt/ConnectionFailureReason;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 263
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    monitor-enter p0

    .line 268
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->f:Ljava/net/Socket;

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/serialization/MessageEncoder;

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->g:Lcom/facebook/orca/mqtt/serialization/MessageDecoder;

    .line 271
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->e:J

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->m:Lcom/google/common/io/CountingInputStream;

    .line 273
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->d:J

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->n:Lcom/google/common/io/CountingOutputStream;

    .line 275
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient$State;->DISCONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 277
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    invoke-interface {v0, p2}, Lcom/facebook/orca/mqtt/MqttClientCallback;->a(Lcom/facebook/orca/mqtt/ConnectionFailureReason;)V

    .line 282
    :cond_1
    return-void

    .line 277
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/mqtt/MqttClient;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->i()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/mqtt/MqttClient;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/MqttClient;->c(Ljava/util/List;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/mqtt/serialization/MessageEncoder;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/mqtt/serialization/MessageEncoder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    invoke-static {}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->newBuilder()Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->a(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v0

    .line 490
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->k()I

    move-result v1

    .line 491
    new-instance v2, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    invoke-direct {v2, v1}, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;-><init>(I)V

    .line 492
    new-instance v3, Lcom/facebook/orca/mqtt/messages/UnsubscribePayload;

    invoke-direct {v3, p2}, Lcom/facebook/orca/mqtt/messages/UnsubscribePayload;-><init>(Ljava/util/List;)V

    .line 493
    new-instance v4, Lcom/facebook/orca/mqtt/messages/UnsubscribeMqttMessage;

    invoke-direct {v4, v0, v2, v3}, Lcom/facebook/orca/mqtt/messages/UnsubscribeMqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;Lcom/facebook/orca/mqtt/messages/UnsubscribePayload;)V

    .line 495
    invoke-virtual {p1, v4}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/MqttMessage;)V

    .line 496
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    invoke-interface {v0, v1}, Lcom/facebook/orca/mqtt/MqttClientCallback;->b(I)V

    .line 499
    :cond_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/mqtt/messages/SubscribeTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->j()V

    .line 398
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/serialization/MessageEncoder;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/mqtt/MqttClient;->a(Lcom/facebook/orca/mqtt/serialization/MessageEncoder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    const-string v2, "Caught exception trying to subscribe"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->i()V

    goto :goto_0
.end method

.method private c(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->j()V

    .line 411
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/serialization/MessageEncoder;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/mqtt/MqttClient;->b(Lcom/facebook/orca/mqtt/serialization/MessageEncoder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    const-string v2, "Caught exception trying to unsubscribe"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 417
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->i()V

    goto :goto_0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->h()V

    .line 214
    :cond_0
    :goto_0
    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-eq v0, v1, :cond_2

    .line 216
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_1
    :goto_1
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    const-string v1, "MQTT network thread exiting"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 258
    return-void

    .line 218
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->g:Lcom/facebook/orca/mqtt/serialization/MessageDecoder;

    .line 219
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :try_start_2
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->a()Lcom/facebook/orca/mqtt/messages/MqttMessage;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 232
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    const-string v1, "SUBACK"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v2, Lcom/facebook/orca/mqtt/MqttClient$State;->DISCONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-eq v1, v2, :cond_1

    .line 226
    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    const-string v2, "Error in network loop: "

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->i()V

    goto :goto_1

    .line 233
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    .line 234
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    const-string v1, "PINGREQ"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_5

    .line 236
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    const-string v1, "PINGRESP"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_5
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 238
    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    const-string v2, "PUBLISH"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 239
    check-cast v0, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;

    .line 240
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    .line 241
    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->c()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->c()I

    move-result v4

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->d()Z

    move-result v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/facebook/orca/mqtt/MqttClientCallback;->a(Ljava/lang/String;[BIZ)V

    goto/16 :goto_0

    .line 248
    :cond_6
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 249
    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    const-string v2, "PUBACK"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 250
    check-cast v0, Lcom/facebook/orca/mqtt/messages/PubAckMessage;

    .line 251
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    .line 252
    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/PubAckMessage;->a()Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;->a()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/orca/mqtt/MqttClientCallback;->a(I)V

    goto/16 :goto_0
.end method

.method private h()V
    .locals 8

    .prologue
    .line 294
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    const-string v1, "Connecting"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 297
    const/4 v1, 0x0

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->c:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttParameters;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->b:Lcom/facebook/orca/mqtt/MqttSsl;

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttSsl;->a()Ljavax/net/SocketFactory;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    .line 308
    :goto_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->c:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/MqttParameters;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/mqtt/MqttClient;->c:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-virtual {v3}, Lcom/facebook/orca/mqtt/MqttParameters;->b()I

    move-result v3

    invoke-direct {v0, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 310
    const/16 v2, 0x7530

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 311
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 312
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 314
    new-instance v2, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;

    new-instance v0, Lcom/facebook/orca/mqtt/serialization/MessageFactory;

    invoke-direct {v0}, Lcom/facebook/orca/mqtt/serialization/MessageFactory;-><init>()V

    invoke-direct {v2, v0}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;-><init>(Lcom/facebook/orca/mqtt/serialization/MessageFactory;)V

    .line 315
    new-instance v3, Lcom/google/common/io/CountingInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/common/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 316
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v0}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->a(Ljava/io/DataInputStream;)V

    .line 318
    new-instance v4, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;

    invoke-direct {v4}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;-><init>()V

    .line 319
    new-instance v5, Lcom/google/common/io/CountingOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/common/io/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 320
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/io/DataOutputStream;)V

    .line 323
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->c:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-direct {p0, v4, v0}, Lcom/facebook/orca/mqtt/MqttClient;->a(Lcom/facebook/orca/mqtt/serialization/MessageEncoder;Lcom/facebook/orca/mqtt/MqttParameters;)V

    .line 324
    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->a()Lcom/facebook/orca/mqtt/messages/MqttMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 331
    sget-object v2, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unexpected message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 332
    sget-object v0, Lcom/facebook/orca/mqtt/ConnectionFailureReason;->MQTT_ERROR:Lcom/facebook/orca/mqtt/ConnectionFailureReason;

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/mqtt/MqttClient;->a(Ljava/net/Socket;Lcom/facebook/orca/mqtt/ConnectionFailureReason;)V

    .line 357
    :cond_0
    :goto_1
    return-void

    .line 306
    :cond_1
    :try_start_1
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto/16 :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    sget-object v2, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    const-string v3, "Failed to connect"

    invoke-static {v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    sget-object v0, Lcom/facebook/orca/mqtt/ConnectionFailureReason;->NETWORK_ERROR:Lcom/facebook/orca/mqtt/ConnectionFailureReason;

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/mqtt/MqttClient;->a(Ljava/net/Socket;Lcom/facebook/orca/mqtt/ConnectionFailureReason;)V

    goto :goto_1

    .line 335
    :cond_2
    check-cast v0, Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;

    .line 336
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;->a()B

    move-result v0

    .line 337
    if-eqz v0, :cond_3

    .line 338
    sget-object v2, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MQTT Connection refused: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/facebook/orca/mqtt/ConnectionFailureReason;->MQTT_ERROR:Lcom/facebook/orca/mqtt/ConnectionFailureReason;

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/mqtt/MqttClient;->a(Ljava/net/Socket;Lcom/facebook/orca/mqtt/ConnectionFailureReason;)V

    goto :goto_1

    .line 342
    :cond_3
    monitor-enter p0

    .line 343
    :try_start_2
    iput-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->f:Ljava/net/Socket;

    .line 344
    iput-object v4, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/serialization/MessageEncoder;

    .line 345
    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->g:Lcom/facebook/orca/mqtt/serialization/MessageDecoder;

    .line 346
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->e:J

    .line 347
    iput-object v3, p0, Lcom/facebook/orca/mqtt/MqttClient;->m:Lcom/google/common/io/CountingInputStream;

    .line 348
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->d:J

    .line 349
    iput-object v5, p0, Lcom/facebook/orca/mqtt/MqttClient;->n:Lcom/google/common/io/CountingOutputStream;

    .line 350
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 352
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    invoke-interface {v0}, Lcom/facebook/orca/mqtt/MqttClientCallback;->a()V

    goto :goto_1

    .line 352
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 360
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    const-string v1, "Disconnecting"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 364
    monitor-enter p0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTING:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-eq v0, v1, :cond_1

    .line 366
    monitor-exit p0

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->f:Ljava/net/Socket;

    .line 369
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    .line 370
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->f:Ljava/net/Socket;

    .line 371
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->m:Lcom/google/common/io/CountingInputStream;

    .line 372
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->n:Lcom/google/common/io/CountingOutputStream;

    .line 373
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->i:Ljava/lang/Thread;

    .line 374
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->g:Lcom/facebook/orca/mqtt/serialization/MessageDecoder;

    .line 375
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/serialization/MessageEncoder;

    .line 377
    sget-object v2, Lcom/facebook/orca/mqtt/MqttClient$State;->DISCONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;

    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 379
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    if-eqz v0, :cond_2

    .line 383
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 389
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 390
    invoke-interface {v1}, Lcom/facebook/orca/mqtt/MqttClientCallback;->b()V

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 384
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private declared-synchronized j()V
    .locals 2

    .prologue
    .line 436
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTING:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-ne v0, v1, :cond_0

    .line 437
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 439
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private k()I
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 517
    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;[BLcom/facebook/orca/mqtt/MqttQOSLevel;Z)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/facebook/orca/mqtt/MqttException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Lcom/facebook/orca/mqtt/MqttException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 165
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publishing on topic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->k()I

    move-result v6

    .line 167
    new-instance v7, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v0, Lcom/facebook/orca/mqtt/MqttClient$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/mqtt/MqttClient$4;-><init>(Lcom/facebook/orca/mqtt/MqttClient;Ljava/lang/String;[BLcom/facebook/orca/mqtt/MqttQOSLevel;ZI)V

    invoke-direct {v7, v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 173
    invoke-virtual {v7}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    monitor-exit p0

    return v6
.end method

.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->INIT:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-eq v0, v1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to connect on used client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTING:Lcom/facebook/orca/mqtt/MqttClient$State;

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    .line 104
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/orca/mqtt/MqttClient$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/mqtt/MqttClient$1;-><init>(Lcom/facebook/orca/mqtt/MqttClient;)V

    const-string v2, "MqttClient Network Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->i:Ljava/lang/Thread;

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/facebook/orca/mqtt/MqttClientCallback;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/facebook/orca/mqtt/MqttClient;->l:Lcom/facebook/orca/mqtt/MqttClientCallback;

    .line 115
    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/mqtt/messages/SubscribeTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/facebook/orca/mqtt/MqttException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Lcom/facebook/orca/mqtt/MqttException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/mqtt/MqttClient$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/mqtt/MqttClient$2;-><init>(Lcom/facebook/orca/mqtt/MqttClient;Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()Z
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTING:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 2

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/mqtt/MqttClient$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/mqtt/MqttClient$5;-><init>(Lcom/facebook/orca/mqtt/MqttClient;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 185
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_0
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()J
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->n:Lcom/google/common/io/CountingOutputStream;

    if-eqz v0, :cond_0

    .line 191
    iget-wide v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->d:J

    .line 192
    iget-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->n:Lcom/google/common/io/CountingOutputStream;

    invoke-virtual {v2}, Lcom/google/common/io/CountingOutputStream;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->d:J

    .line 193
    iget-wide v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->d:J

    sub-long v0, v2, v0

    .line 195
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public f()J
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->m:Lcom/google/common/io/CountingInputStream;

    if-eqz v0, :cond_0

    .line 201
    iget-wide v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->e:J

    .line 202
    iget-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->m:Lcom/google/common/io/CountingInputStream;

    invoke-virtual {v2}, Lcom/google/common/io/CountingInputStream;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->e:J

    .line 203
    iget-wide v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->e:J

    sub-long v0, v2, v0

    .line 205
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    const-string v1, "[MqttClient ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->c:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttParameters;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->c:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttParameters;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->c:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttParameters;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    const-string v1, " +ssl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_0
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->k:Lcom/facebook/orca/mqtt/MqttClient$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 532
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
