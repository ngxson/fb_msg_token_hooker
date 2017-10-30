.class public Lcom/facebook/orca/mqtt/serialization/MessageEncoder;
.super Ljava/lang/Object;
.source "MessageEncoder.java"


# instance fields
.field private a:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;)I
    .locals 2
    .parameter

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const/16 v0, 0x80

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    or-int/lit8 v0, v0, 0x40

    .line 142
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    or-int/lit8 v0, v0, 0x20

    .line 145
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->f()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    .line 146
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    or-int/lit8 v0, v0, 0x4

    .line 149
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    or-int/lit8 v0, v0, 0x2

    .line 152
    :cond_4
    return v0
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I
    .locals 2
    .parameter

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->a()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    .line 286
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    or-int/lit8 v0, v0, 0x8

    .line 289
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->c()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 290
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    or-int/lit8 v0, v0, 0x1

    .line 293
    :cond_1
    return v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 298
    :cond_0
    rem-int/lit16 v0, p1, 0x80

    .line 299
    div-int/lit16 p1, p1, 0x80

    .line 300
    if-lez p1, :cond_1

    .line 301
    or-int/lit16 v0, v0, 0x80

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 304
    if-gtz p1, :cond_0

    .line 305
    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 158
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 159
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;->a()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 161
    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    .line 61
    const/16 v5, 0xc

    .line 64
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v6

    .line 65
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;

    move-result-object v7

    .line 66
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;->c()Lcom/facebook/orca/mqtt/messages/ConnectPayload;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->a()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v8

    .line 71
    array-length v0, v8

    add-int/lit8 v0, v0, 0x2

    add-int v2, v10, v0

    .line 75
    invoke-virtual {v4}, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->b()Ljava/lang/String;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 77
    :goto_0
    invoke-virtual {v4}, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->c()Ljava/lang/String;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_7

    invoke-direct {p0, v1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 79
    :goto_1
    invoke-virtual {v7}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    array-length v3, v0

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 81
    array-length v3, v1

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 84
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->d()Ljava/lang/String;

    move-result-object v3

    .line 85
    if-eqz v3, :cond_8

    invoke-direct {p0, v3}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 86
    :goto_2
    invoke-virtual {v7}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->b()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 87
    array-length v9, v3

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v2, v9

    .line 90
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->e()Ljava/lang/String;

    move-result-object v4

    .line 91
    if-eqz v4, :cond_9

    invoke-direct {p0, v4}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 92
    :goto_3
    invoke-virtual {v7}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->c()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 93
    array-length v9, v4

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v2, v9

    .line 97
    :cond_2
    add-int/2addr v2, v5

    .line 98
    iget-object v5, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-direct {p0, v6}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 99
    invoke-direct {p0, v2}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(I)V

    .line 102
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 103
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 104
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v5, 0x4d

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 105
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v5, 0x51

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 106
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v5, 0x49

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 107
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v5, 0x73

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 108
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 109
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v5, 0x70

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 110
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->a()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 111
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-direct {p0, v7}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 112
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->h()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 115
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v8

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 116
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v8

    invoke-virtual {v2, v8, v10, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 117
    invoke-virtual {v7}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 119
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v0

    invoke-virtual {v2, v0, v10, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v2, v1

    invoke-virtual {v0, v1, v10, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 123
    :cond_3
    invoke-virtual {v7}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v3

    invoke-virtual {v0, v3, v10, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 127
    :cond_4
    invoke-virtual {v7}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v4

    invoke-virtual {v0, v4, v10, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 132
    return-void

    .line 76
    :cond_6
    new-array v0, v10, [B

    goto/16 :goto_0

    .line 78
    :cond_7
    new-array v1, v10, [B

    goto/16 :goto_1

    .line 85
    :cond_8
    new-array v3, v10, [B

    goto/16 :goto_2

    .line 91
    :cond_9
    new-array v4, v10, [B

    goto/16 :goto_3
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v2

    .line 254
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;

    move-result-object v3

    .line 255
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->c()[B

    move-result-object v4

    .line 257
    invoke-virtual {v3}, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;->a()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 260
    array-length v0, v5

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->c()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    add-int/2addr v0, v6

    .line 262
    array-length v6, v4

    .line 263
    add-int/2addr v0, v6

    .line 265
    iget-object v6, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-direct {p0, v2}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 266
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(I)V

    .line 267
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v6, v5

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 268
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v6, v5

    invoke-virtual {v0, v5, v1, v6}, Ljava/io/DataOutputStream;->write([BII)V

    .line 269
    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->c()I

    move-result v0

    if-lez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v2, v4

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 273
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 274
    return-void

    :cond_1
    move v0, v1

    .line 260
    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 230
    const/4 v0, 0x2

    .line 231
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;->c()Lcom/facebook/orca/mqtt/messages/SubAckPayload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/messages/SubAckPayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    .line 232
    add-int/2addr v0, v1

    .line 233
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 234
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 235
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(I)V

    .line 236
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 237
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;->c()Lcom/facebook/orca/mqtt/messages/SubAckPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/SubAckPayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 238
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 241
    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 164
    const/4 v3, 0x2

    .line 167
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v4

    .line 168
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    move-result-object v5

    .line 169
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;->c()Lcom/facebook/orca/mqtt/messages/SubscribePayload;

    move-result-object v6

    .line 171
    invoke-virtual {v6}, Lcom/facebook/orca/mqtt/messages/SubscribePayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    .line 172
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;->a()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 174
    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 175
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 176
    goto :goto_0

    .line 179
    :cond_0
    add-int v0, v3, v1

    .line 180
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-direct {p0, v4}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 181
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(I)V

    .line 184
    invoke-virtual {v5}, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;->a()I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 188
    invoke-virtual {v6}, Lcom/facebook/orca/mqtt/messages/SubscribePayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    .line 189
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;->a()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-direct {p0, v3}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 191
    iget-object v4, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 192
    iget-object v4, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v3

    invoke-virtual {v4, v3, v2, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 193
    iget-object v3, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_1

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 196
    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/UnsubAckMqttMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 244
    const/4 v0, 0x2

    .line 245
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 246
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/UnsubAckMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 247
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(I)V

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/UnsubAckMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 250
    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/UnsubscribeMqttMessage;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 199
    const/4 v3, 0x2

    .line 202
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/UnsubscribeMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v4

    .line 203
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/UnsubscribeMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    move-result-object v5

    .line 204
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/UnsubscribeMqttMessage;->c()Lcom/facebook/orca/mqtt/messages/UnsubscribePayload;

    move-result-object v6

    .line 206
    invoke-virtual {v6}, Lcom/facebook/orca/mqtt/messages/UnsubscribePayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 208
    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    move v1, v0

    .line 209
    goto :goto_0

    .line 212
    :cond_0
    add-int v0, v3, v1

    .line 213
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-direct {p0, v4}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 214
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(I)V

    .line 217
    invoke-virtual {v5}, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;->a()I

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 221
    invoke-virtual {v6}, Lcom/facebook/orca/mqtt/messages/UnsubscribePayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 223
    iget-object v3, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 224
    iget-object v3, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v4, v0

    invoke-virtual {v3, v0, v2, v4}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_1

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 227
    return-void
.end method

.method private a(Ljava/lang/String;)[B
    .locals 2
    .parameter

    .prologue
    .line 318
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(I)I
    .locals 1
    .parameter

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 310
    :cond_0
    div-int/lit16 p1, p1, 0x80

    .line 311
    add-int/lit8 v0, v0, 0x1

    .line 312
    if-gtz p1, :cond_0

    .line 313
    return v0
.end method

.method private b(Lcom/facebook/orca/mqtt/messages/MqttMessage;)V
    .locals 2
    .parameter

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 279
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 280
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 281
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/facebook/orca/mqtt/messages/MqttMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 26
    :pswitch_1
    :try_start_1
    check-cast p1, Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :goto_0
    monitor-exit p0

    return-void

    .line 30
    :pswitch_2
    :try_start_2
    check-cast p1, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;)V

    goto :goto_0

    .line 34
    :pswitch_3
    check-cast p1, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;)V

    goto :goto_0

    .line 37
    :pswitch_4
    check-cast p1, Lcom/facebook/orca/mqtt/messages/UnsubscribeMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/UnsubscribeMqttMessage;)V

    goto :goto_0

    .line 40
    :pswitch_5
    check-cast p1, Lcom/facebook/orca/mqtt/messages/UnsubAckMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/UnsubAckMqttMessage;)V

    goto :goto_0

    .line 44
    :pswitch_6
    check-cast p1, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;)V

    goto :goto_0

    .line 48
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->b(Lcom/facebook/orca/mqtt/messages/MqttMessage;)V

    goto :goto_0

    .line 52
    :pswitch_8
    check-cast p1, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    .line 21
    return-void
.end method
