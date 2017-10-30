.class Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;
.super Ljava/lang/Object;
.source "FbSdcardLogger.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;

.field private b:Ljava/io/File;

.field private c:Ljava/io/Writer;

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->a:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;-><init>(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_0

    .line 256
    const-string v0, "o"

    :goto_0
    return-object v0

    .line 244
    :pswitch_0
    const-string v0, "v"

    goto :goto_0

    .line 246
    :pswitch_1
    const-string v0, "d"

    goto :goto_0

    .line 248
    :pswitch_2
    const-string v0, "i"

    goto :goto_0

    .line 250
    :pswitch_3
    const-string v0, "w"

    goto :goto_0

    .line 252
    :pswitch_4
    const-string v0, "e"

    goto :goto_0

    .line 254
    :pswitch_5
    const-string v0, "a"

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->b()V

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-static {}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->c()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 138
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 139
    iget-object v5, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;

    invoke-virtual {v5, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 140
    iget-object v5, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 141
    iget-object v4, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 147
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->b:Ljava/io/File;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 6

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->d()V

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->a:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;

    invoke-static {v0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->c(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    iget-wide v2, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->d:J

    .line 170
    invoke-direct {p0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c()Ljava/io/File;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 172
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 174
    new-instance v3, Ljava/io/File;

    const-string v4, ".nomedia"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 176
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "debug.log"

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/orca/common/diagnostics/LogFileUtils;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->b:Ljava/io/File;

    .line 177
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->b:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v4, 0x800

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v2, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;

    .line 178
    iput-wide v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->e:J

    .line 179
    invoke-static {}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->d()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Opened log."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->b:Ljava/io/File;

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()Ljava/io/File;
    .locals 4

    .prologue
    .line 188
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->a:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;

    invoke-static {v3}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->d(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files/log/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private d()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 197
    iget-wide v2, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    iput-object v1, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->b:Ljava/io/File;

    .line 237
    iput-object v1, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;

    .line 239
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 236
    iput-object v1, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->b:Ljava/io/File;

    .line 237
    iput-object v1, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->b:Ljava/io/File;

    .line 237
    iput-object v1, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c:Ljava/io/Writer;

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/diagnostics/LogFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->d()V

    .line 205
    invoke-direct {p0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->c()Ljava/io/File;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 227
    :goto_0
    monitor-exit p0

    return-object v0

    .line 210
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 212
    array-length v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    .line 214
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "debug.log"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 213
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_1
    invoke-static {v6}, Lcom/facebook/orca/common/diagnostics/LogFileUtils;->a(Ljava/io/File;)Lcom/facebook/orca/common/diagnostics/LogFile;

    move-result-object v7

    .line 218
    invoke-virtual {v7}, Lcom/facebook/orca/common/diagnostics/LogFile;->b()Ljava/util/Date;

    move-result-object v8

    .line 219
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/32 v10, 0x2932e00

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 221
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 224
    :cond_3
    :try_start_2
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 226
    :cond_4
    invoke-static {v0}, Lcom/facebook/orca/common/diagnostics/LogFileUtils;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
