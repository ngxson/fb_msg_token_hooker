.class public Lcom/facebook/orca/cache/ThreadDisplayCache;
.super Ljava/lang/Object;
.source "ThreadDisplayCache.java"


# static fields
.field private static final a:Lcom/facebook/orca/debug/WtfToken;

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/facebook/orca/cache/DataCache;

.field private final d:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private final e:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private final f:Lcom/facebook/orca/threads/ThreadSnippetUtil;

.field private final g:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/debug/WtfToken;

    .line 81
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    sput-object v0, Lcom/facebook/orca/cache/ThreadDisplayCache;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/attachments/AttachmentDataFactory;Lcom/facebook/orca/threads/ThreadParticipantUtils;Lcom/facebook/orca/threads/ThreadSnippetUtil;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Lcom/facebook/orca/cache/DataCache;

    .line 97
    iput-object p2, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->d:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 98
    iput-object p3, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->e:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 99
    iput-object p4, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->f:Lcom/facebook/orca/threads/ThreadSnippetUtil;

    .line 100
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->c(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->i()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->g:Ljava/util/concurrent/ConcurrentMap;

    .line 105
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->h:Ljava/util/Map;

    .line 106
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->i:Ljava/util/Map;

    .line 107
    return-void
.end method

.method private d(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 154
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    .line 159
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 160
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 161
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v6}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 170
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 174
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 175
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 180
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 181
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-ne v0, v7, :cond_6

    .line 183
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 184
    iget-object v3, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v3

    .line 185
    if-eqz v3, :cond_5

    .line 186
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 187
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 208
    :cond_4
    :goto_2
    new-instance v0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;-><init>(JLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0

    .line 192
    :cond_5
    sget-object v3, Lcom/facebook/orca/cache/ThreadDisplayCache;->a:Lcom/facebook/orca/debug/WtfToken;

    sget-object v4, Lcom/facebook/orca/cache/ThreadDisplayCache;->b:Ljava/lang/Class;

    const-string v5, "ParticipantInfo [%s]"

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 199
    :cond_6
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 200
    iget-object v4, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v4, v0}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v4

    .line 201
    if-eqz v4, :cond_7

    .line 202
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 203
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/ThreadSummary;Z)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->d:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/net/Uri;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 237
    :cond_0
    if-eqz p2, :cond_2

    .line 238
    invoke-virtual {p0, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)I

    move-result v0

    .line 239
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 240
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 241
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/users/UserKey;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->e:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/users/UserKey;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 252
    if-nez p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-object v0

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_0

    .line 257
    iget-object v2, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->e:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/Long;
    .locals 2
    .parameter

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    const/4 v0, 0x0

    .line 352
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    .line 131
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->a(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->b(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 111
    return-void
.end method

.method public a(Lcom/facebook/orca/threads/Message;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->b(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    move-result-object v5

    .line 294
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    .line 295
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v6

    cmp-long v4, v6, v10

    if-eqz v4, :cond_0

    .line 296
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 300
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-nez v4, :cond_3

    :cond_1
    move v4, v2

    .line 304
    :goto_0
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->c()J

    move-result-wide v8

    cmp-long v0, v8, v0

    if-gez v0, :cond_4

    move v0, v2

    .line 307
    :goto_1
    if-eqz v0, :cond_5

    .line 308
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    iget-object v2, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->f:Lcom/facebook/orca/threads/ThreadSnippetUtil;

    invoke-virtual {v2, p1}, Lcom/facebook/orca/threads/ThreadSnippetUtil;->a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;-><init>(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;J)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Ljava/lang/String;Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;)V

    .line 323
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v4, v3

    .line 300
    goto :goto_0

    :cond_4
    move v0, v3

    .line 304
    goto :goto_1

    .line 314
    :cond_5
    if-eqz v5, :cond_2

    .line 316
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    invoke-virtual {v5}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->b()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;-><init>(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;J)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Ljava/lang/String;Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;)V

    goto :goto_2
.end method

.method public a(Lcom/facebook/orca/users/UserKey;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 333
    if-nez p1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 337
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;
    .locals 1
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    return-object v0
.end method

.method public b(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    .line 146
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->a(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;->c(Lcom/facebook/orca/cache/ThreadDisplayCache$ParticipantListResult;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/orca/cache/ThreadDisplayCache;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method

.method public c(Lcom/facebook/orca/threads/ThreadSummary;)I
    .locals 1
    .parameter

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
