.class public Lcom/facebook/orca/debug/ThreadTrace;
.super Ljava/lang/Object;
.source "ThreadTrace.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private c:J

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/debug/TraceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/orca/debug/TraceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/facebook/orca/debug/ThreadTrace;

    sput-object v0, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/Class;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/orca/debug/ThreadTrace;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:Ljava/util/List;

    .line 31
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(J)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/facebook/orca/debug/ThreadTrace;->c:J

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->f:J

    .line 99
    return-void
.end method


# virtual methods
.method a(JLjava/lang/Long;)J
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 155
    if-nez p3, :cond_0

    .line 156
    iget-wide v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->c:J

    move-wide v1, v0

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/orca/debug/TraceEvent;

    .line 162
    if-nez v6, :cond_1

    .line 163
    const-wide/16 v0, -0x1

    .line 185
    :goto_1
    return-wide v0

    .line 158
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v1, v0

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v6}, Lcom/facebook/orca/debug/TraceEvent;->e()J

    move-result-wide v7

    sub-long v8, v3, v7

    .line 170
    cmp-long v0, v8, v1

    if-gez v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 172
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/TraceEvent;

    .line 174
    if-ne v0, v6, :cond_3

    .line 175
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_3
    move-wide v0, v8

    .line 185
    goto :goto_1

    .line 172
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 181
    :cond_4
    new-instance v0, Lcom/facebook/orca/debug/TraceEvent;

    sget-object v1, Lcom/facebook/orca/debug/TraceEvent$Type;->STOP:Lcom/facebook/orca/debug/TraceEvent$Type;

    sget-object v2, Lcom/facebook/orca/debug/ThreadTrace;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/facebook/orca/debug/TraceEvent;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/facebook/orca/debug/TraceEvent;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/facebook/orca/debug/TraceEvent;->e()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/debug/TraceEvent;-><init>(Lcom/facebook/orca/debug/TraceEvent$Type;JLjava/lang/String;Ljava/lang/String;J)V

    .line 183
    iget-object v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x1f4

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    .line 116
    sget-object v1, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/Class;

    const-string v2, "Giant thread trace. Clearing to avoid memory leak."

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 122
    iget-object v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 128
    :cond_0
    if-le v0, v3, :cond_1

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 133
    :cond_1
    new-instance v0, Lcom/facebook/orca/debug/TraceEvent;

    sget-object v1, Lcom/facebook/orca/debug/TraceEvent$Type;->START:Lcom/facebook/orca/debug/TraceEvent$Type;

    sget-object v2, Lcom/facebook/orca/debug/ThreadTrace;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    const-wide/16 v6, -0x1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/debug/TraceEvent;-><init>(Lcom/facebook/orca/debug/TraceEvent$Type;JLjava/lang/String;Ljava/lang/String;J)V

    .line 135
    iget-object v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method a()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/debug/ThreadTrace;->b(J)V

    .line 50
    return-void
.end method

.method a(ILjava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0xfa0

    const/4 v1, 0x0

    .line 53
    invoke-static {p1}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/debug/ThreadTrace;->b()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_4

    .line 57
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    move v2, v1

    move v3, v1

    .line 62
    :goto_0
    array-length v6, v4

    if-ge v3, v6, :cond_2

    .line 63
    aget-object v6, v4, v3

    .line 64
    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v0

    if-ge v7, v8, :cond_1

    .line 65
    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v6

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread trace: ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/facebook/orca/debug/BLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    .line 76
    :cond_2
    if-lez v0, :cond_3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread trace: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/facebook/orca/debug/BLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/orca/debug/ThreadTrace;->a()V

    .line 85
    return-void

    .line 80
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread trace:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/facebook/orca/debug/BLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method a(J)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/debug/ThreadTrace;->b(J)V

    .line 43
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/facebook/orca/debug/ThreadTrace;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 199
    new-instance v0, Lcom/facebook/orca/debug/TraceEvent;

    sget-object v1, Lcom/facebook/orca/debug/TraceEvent$Type;->COMMENT:Lcom/facebook/orca/debug/TraceEvent$Type;

    sget-object v2, Lcom/facebook/orca/debug/ThreadTrace;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    const-wide/16 v6, -0x1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/debug/TraceEvent;-><init>(Lcom/facebook/orca/debug/TraceEvent$Type;JLjava/lang/String;Ljava/lang/String;J)V

    .line 201
    iget-object v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    const-wide/16 v3, -0x1

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 224
    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v10

    .line 225
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/TraceEvent;

    .line 227
    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->b()Lcom/facebook/orca/debug/TraceEvent$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/debug/TraceEvent$Type;->STOP:Lcom/facebook/orca/debug/TraceEvent$Type;

    if-ne v1, v2, :cond_0

    .line 228
    invoke-virtual {v10}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 230
    :cond_0
    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-wide v1, p0, Lcom/facebook/orca/debug/ThreadTrace;->f:J

    invoke-direct {p0, v10}, Lcom/facebook/orca/debug/ThreadTrace;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/debug/TraceEvent;->a(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->e()J

    move-result-wide v3

    .line 234
    const-string v1, "\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->b()Lcom/facebook/orca/debug/TraceEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/debug/TraceEvent$Type;->START:Lcom/facebook/orca/debug/TraceEvent$Type;

    if-ne v0, v1, :cond_1

    .line 236
    const-string v0, "|  "

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    const-string v0, " Unstopped timers:\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/debug/ThreadTrace;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/TraceEvent;

    .line 244
    const-string v2, "  "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    const-string v2, " ("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->e()J

    move-result-wide v2

    sub-long v2, v8, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 248
    const-string v2, " ms, started at "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Lcom/facebook/orca/debug/TraceEvent;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/TraceEvent;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 253
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
