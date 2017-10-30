.class public Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;
.super Ljava/lang/Object;
.source "MmsSmsContentResolverHandler.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static h:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/sms/SmsContentResolverHandler;

.field private final d:Lcom/facebook/orca/sms/MmsContentResolverHandler;

.field private final e:Lcom/facebook/orca/sms/MmsSmsUserUtils;

.field private final f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final g:Lcom/facebook/orca/threads/ThreadSnippetUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const-class v0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    sput-object v0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->a:Ljava/lang/Class;

    .line 525
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "COUNT(*) AS num_threads"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SUM(read) AS read_count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MAX(date) AS latest_message_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/sms/SmsContentResolverHandler;Lcom/facebook/orca/sms/MmsContentResolverHandler;Lcom/facebook/orca/sms/MmsSmsUserUtils;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/threads/ThreadSnippetUtil;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->b:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->c:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    .line 74
    iput-object p3, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->d:Lcom/facebook/orca/sms/MmsContentResolverHandler;

    .line 75
    iput-object p4, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->e:Lcom/facebook/orca/sms/MmsSmsUserUtils;

    .line 76
    iput-object p5, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 77
    iput-object p6, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->g:Lcom/facebook/orca/threads/ThreadSnippetUtil;

    .line 78
    return-void
.end method

.method private a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    move v2, v0

    move v3, v0

    .line 234
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 236
    invoke-virtual {p2, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 237
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 239
    invoke-virtual {p1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 240
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {p1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;

    .line 243
    invoke-virtual {p2, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;

    .line 244
    invoke-virtual {v1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->c()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->c()J

    move-result-wide v0

    cmp-long v0, v5, v0

    if-gez v0, :cond_3

    .line 245
    invoke-virtual {p1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 246
    add-int/lit8 v1, v3, 0x1

    move v0, v2

    :goto_1
    move v2, v0

    move v3, v1

    .line 251
    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {p2, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 249
    add-int/lit8 v0, v2, 0x1

    move v1, v3

    goto :goto_1

    .line 253
    :cond_4
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;I)Lcom/google/common/collect/ImmutableList;
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;",
            ">;I)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 185
    .line 187
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->g_()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->h(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v4

    .line 189
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->g_()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->h(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    .line 191
    :goto_0
    add-int v0, v3, v1

    if-ge v0, p3, :cond_4

    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v5}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    :cond_0
    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    invoke-interface {v5}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 195
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 196
    :cond_1
    invoke-interface {v5}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 198
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 200
    :cond_2
    invoke-interface {v5}, Lcom/google/common/collect/PeekingIterator;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;

    invoke-virtual {v0}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->c()J

    move-result-wide v6

    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;

    invoke-virtual {v0}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->c()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    .line 202
    invoke-interface {v4}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 203
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 205
    :cond_3
    invoke-interface {v5}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 206
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 210
    :cond_4
    invoke-virtual {p1, v2, v3}, Lcom/google/common/collect/ImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 212
    invoke-virtual {p2, v2, v1}, Lcom/google/common/collect/ImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->d:Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 217
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Lcom/google/common/collect/ImmutableMultimap;)Lcom/google/common/collect/ImmutableList;
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;",
            ">;",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/users/User;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    const-wide v1, 0x7fffffffffffffffL

    .line 270
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 272
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v1

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;

    .line 273
    invoke-virtual {v1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->c()J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 274
    invoke-virtual {v1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->c()J

    move-result-wide v2

    .line 276
    invoke-virtual {v1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->a()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableMultimap;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 277
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->e:Lcom/facebook/orca/sms/MmsSmsUserUtils;

    invoke-virtual {v1}, Lcom/facebook/orca/sms/MmsSmsUserUtils;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v6

    .line 282
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v7

    .line 284
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;

    .line 285
    invoke-virtual {v1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->a()Ljava/lang/String;

    move-result-object v9

    .line 286
    invoke-virtual {v1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->c()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long v10, v2, v4

    .line 288
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 289
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/google/common/collect/ImmutableMultimap;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/users/User;

    .line 290
    iget-object v4, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->e:Lcom/facebook/orca/sms/MmsSmsUserUtils;

    invoke-virtual {v4, v2}, Lcom/facebook/orca/sms/MmsSmsUserUtils;->a(Lcom/facebook/orca/users/User;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 292
    :cond_3
    const/4 v3, 0x0

    .line 293
    const/4 v2, 0x0

    .line 294
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_7

    .line 295
    const/4 v3, 0x1

    .line 296
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    move v4, v3

    move-object v3, v2

    .line 298
    :goto_4
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v12

    .line 300
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 301
    new-instance v13, Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    invoke-direct {v13}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;-><init>()V

    invoke-static {v9}, Lcom/facebook/orca/threads/MessagingIdUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->f()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v2

    .line 305
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 308
    :cond_4
    invoke-virtual {v1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->e()Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-virtual {v1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->f()Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 312
    :goto_6
    new-instance v5, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct {v5}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    invoke-static {v9}, Lcom/facebook/orca/threads/MessagingIdUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->c()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->g()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->d()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->x()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 328
    invoke-virtual {v7, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto/16 :goto_2

    :cond_5
    move-object v2, v5

    .line 310
    goto :goto_6

    .line 330
    :cond_6
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1

    :cond_7
    move v4, v3

    move-object v3, v2

    goto/16 :goto_4
.end method

.method private a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultimap;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v2

    .line 363
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMultimap;->q()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->c(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v3

    .line 365
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v4

    .line 366
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    iget-object v6, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->e:Lcom/facebook/orca/sms/MmsSmsUserUtils;

    invoke-virtual {v6, v1}, Lcom/facebook/orca/sms/MmsSmsUserUtils;->a(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v1

    .line 369
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 371
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMultimap;->j()Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v3

    .line 372
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMultimap;->m()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableMultimap;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 375
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 376
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    goto :goto_1

    .line 380
    :cond_3
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultimap;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 393
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-static {}, Lcom/google/common/collect/ImmutableMultimap;->c()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    .line 397
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMultimap;->j()Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v7

    .line 398
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const/4 v0, 0x1

    const-string v1, "recipient_ids"

    aput-object v1, v2, v0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    sget-object v0, Landroid_src/provider/Telephony$MmsSms;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v4, "true"

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 404
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 412
    :try_start_0
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 413
    const-string v0, "recipient_ids"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 414
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    move v0, v6

    :goto_1
    if-ge v0, v8, :cond_1

    aget-object v9, v5, v0

    .line 418
    invoke-virtual {v7, v4, v9}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 424
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private c(Ljava/util/Collection;)Ljava/util/Map;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 434
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v6

    .line 435
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 462
    :goto_0
    return-object v0

    .line 439
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "address"

    aput-object v1, v2, v0

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 442
    sget-object v0, Landroid_src/provider/Telephony$MmsSms;->a:Landroid/net/Uri;

    const-string v1, "canonical-addresses"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 444
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 452
    :try_start_0
    const-string v0, "address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 453
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 454
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 455
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 457
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 460
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 462
    goto :goto_0
.end method


# virtual methods
.method a(Lcom/facebook/orca/sms/FetchMmsSmsThreadListParams;)Lcom/facebook/orca/sms/FetchMmsSmsThreadListResult;
    .locals 5
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->c:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(Lcom/facebook/orca/sms/FetchMmsSmsThreadListParams;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->d:Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Lcom/facebook/orca/sms/FetchMmsSmsThreadListParams;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 94
    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadListParams;->a()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 100
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsThreadListParams;->a()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 104
    :goto_0
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 105
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;

    .line 106
    invoke-virtual {v0}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0, v3}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    .line 109
    invoke-direct {p0, v2, v0}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->a(Ljava/util/List;Lcom/google/common/collect/ImmutableMultimap;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 111
    new-instance v3, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-direct {v3, v2, v1}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V

    .line 113
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->q()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/facebook/orca/sms/FetchMmsSmsThreadListResult;

    invoke-direct {v1, v3, v0}, Lcom/facebook/orca/sms/FetchMmsSmsThreadListResult;-><init>(Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;)V

    .line 116
    return-object v1
.end method

.method a(Ljava/lang/String;)Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;
    .locals 1
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->b(Ljava/lang/String;)Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;

    move-result-object v0

    return-object v0
.end method

.method a()Lcom/facebook/orca/threads/FolderCounts;
    .locals 11

    .prologue
    const-wide/16 v6, -0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 537
    sget-object v0, Landroid_src/provider/Telephony$MmsSms;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 543
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->h:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 551
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    const-string v0, "num_threads"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 553
    const-string v1, "read_count"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 554
    sub-int v2, v0, v1

    .line 555
    const-string v0, "latest_message_time"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    move-wide v8, v0

    move v1, v2

    .line 558
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 560
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/MessagesPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v2, v6, v7}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v3

    .line 562
    const-wide/32 v5, 0xf4240

    mul-long/2addr v5, v8

    .line 563
    cmp-long v0, v3, v8

    if-gez v0, :cond_0

    const/4 v2, 0x1

    .line 564
    :goto_1
    new-instance v0, Lcom/facebook/orca/threads/FolderCounts;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/threads/FolderCounts;-><init>(IIJJ)V

    return-object v0

    .line 558
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move v2, v10

    .line 563
    goto :goto_1

    :cond_1
    move-wide v8, v6

    move v1, v10

    goto :goto_0
.end method

.method a(Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 477
    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 478
    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 479
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v6, v2, v1}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    .line 522
    :goto_0
    return-object v0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->c:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 484
    iget-object v2, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->d:Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-virtual {v2, p1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 488
    iget-object v3, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->c:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->b(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 490
    iget-object v3, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->d:Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-virtual {v3, v2}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->b(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    .line 493
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->b()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    move v2, v0

    .line 496
    :goto_1
    new-instance v9, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v9}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move v3, v1

    move v4, v1

    move v5, v1

    .line 500
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->b()I

    move-result v0

    if-ge v5, v0, :cond_6

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lt v4, v0, :cond_1

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 502
    :cond_1
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v4, v0, :cond_3

    .line 503
    invoke-virtual {v8, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 504
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    move v0, v4

    .line 519
    :goto_3
    add-int/lit8 v3, v5, 0x1

    move v4, v0

    move v5, v3

    move v3, v1

    goto :goto_2

    :cond_2
    move v2, v1

    .line 493
    goto :goto_1

    .line 505
    :cond_3
    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v3, v0, :cond_4

    .line 506
    invoke-virtual {v7, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 507
    add-int/lit8 v4, v4, 0x1

    move v1, v3

    move v0, v4

    goto :goto_3

    .line 509
    :cond_4
    invoke-virtual {v7, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 510
    invoke-virtual {v8, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/Message;

    .line 511
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_5

    .line 512
    invoke-virtual {v7, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 513
    add-int/lit8 v4, v4, 0x1

    move v1, v3

    move v0, v4

    goto :goto_3

    .line 515
    :cond_5
    invoke-virtual {v8, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 516
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    move v0, v4

    goto :goto_3

    .line 521
    :cond_6
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 522
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-direct {v0, v6, v1, v2}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    goto/16 :goto_0
.end method

.method a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->c:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->d:Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 159
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->a(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 165
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v1

    .line 166
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->a(Ljava/util/List;Lcom/google/common/collect/ImmutableMultimap;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 167
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 169
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 170
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/threads/MessagingIdUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableMultimap;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 172
    new-instance v5, Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;

    invoke-direct {v5, v0, v4}, Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;-><init>(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V

    .line 174
    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;)Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;
    .locals 3
    .parameter

    .prologue
    .line 137
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 138
    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;

    .line 143
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;-><init>(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 339
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid_src/provider/Telephony$Threads;->a(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;
    .locals 3
    .parameter

    .prologue
    .line 466
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->a(Ljava/lang/String;IJ)Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;

    move-result-object v0

    .line 471
    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->a(Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 572
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 573
    sget-object v2, Landroid_src/provider/Telephony$MmsSms;->b:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 575
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 576
    const-string v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    iget-object v2, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 583
    return-void
.end method

.method f(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 586
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 587
    sget-object v2, Landroid_src/provider/Telephony$MmsSms;->b:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method g(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 592
    invoke-static {p1}, Lcom/facebook/orca/threads/MessagingIdUtil;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->c:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-static {p1}, Lcom/facebook/orca/threads/MessagingIdUtil;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->c(Ljava/lang/String;)V

    .line 599
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-static {p1}, Lcom/facebook/orca/threads/MessagingIdUtil;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->d:Lcom/facebook/orca/sms/MmsContentResolverHandler;

    invoke-static {p1}, Lcom/facebook/orca/threads/MessagingIdUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/sms/MmsContentResolverHandler;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Message id is not an Mms or Sms id"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
