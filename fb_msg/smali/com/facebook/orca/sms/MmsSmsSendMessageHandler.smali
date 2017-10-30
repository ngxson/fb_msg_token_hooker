.class public Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;
.super Ljava/lang/Object;
.source "MmsSmsSendMessageHandler.java"


# instance fields
.field private final a:Lcom/facebook/orca/protocol/methods/PickedUserUtils;

.field private final b:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private final c:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

.field private final d:Lcom/facebook/orca/sms/MmsSendMessageHandler;

.field private final e:Lcom/facebook/orca/sms/SmsSendMessageHandler;

.field private final f:Lcom/facebook/orca/sms/MmsSmsUserUtils;

.field private final g:Lcom/facebook/orca/sms/MmsSmsLogger;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/PickedUserUtils;Lcom/facebook/orca/threads/ThreadParticipantUtils;Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;Lcom/facebook/orca/sms/MmsSendMessageHandler;Lcom/facebook/orca/sms/SmsSendMessageHandler;Lcom/facebook/orca/sms/MmsSmsUserUtils;Lcom/facebook/orca/sms/MmsSmsLogger;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->a:Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    .line 55
    iput-object p2, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->b:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 56
    iput-object p3, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->c:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    .line 57
    iput-object p4, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->d:Lcom/facebook/orca/sms/MmsSendMessageHandler;

    .line 58
    iput-object p5, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->e:Lcom/facebook/orca/sms/SmsSendMessageHandler;

    .line 59
    iput-object p6, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->f:Lcom/facebook/orca/sms/MmsSmsUserUtils;

    .line 60
    iput-object p7, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    .line 61
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;Ljava/util/Set;)Lcom/facebook/orca/threads/Message;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/Message;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/orca/threads/Message;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 122
    const/4 v8, 0x0

    .line 123
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, v5, :cond_0

    .line 143
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 144
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->e:Lcom/facebook/orca/sms/SmsSendMessageHandler;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/orca/sms/SmsSendMessageHandler;->a(Lcom/facebook/orca/threads/Message;Ljava/lang/String;)Lcom/facebook/orca/threads/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_7

    :goto_0
    invoke-virtual {v1, v2, v5}, Lcom/facebook/orca/sms/MmsSmsLogger;->a(Ljava/lang/String;Z)V

    .line 160
    :goto_1
    return-object v0

    .line 126
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->d:Lcom/facebook/orca/sms/MmsSendMessageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/sms/MmsSendMessageHandler;->a(Lcom/facebook/orca/threads/Message;Ljava/util/Set;)Lcom/facebook/orca/threads/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 128
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v4

    .line 129
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/media/MediaResource;

    invoke-virtual {v4}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/media/MediaResource$Type;->name()Ljava/lang/String;

    move-result-object v4

    if-eqz v7, :cond_1

    :goto_2
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/sms/MmsSmsLogger;->a(Ljava/lang/String;IILjava/lang/String;Z)V

    :goto_3
    move-object v0, v7

    .line 142
    goto :goto_1

    :cond_1
    move v5, v6

    .line 130
    goto :goto_2

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v7, :cond_3

    :goto_4
    invoke-virtual {v0, v1, v2, v5}, Lcom/facebook/orca/sms/MmsSmsLogger;->a(Ljava/lang/String;IZ)V

    goto :goto_3

    :cond_3
    move v5, v6

    goto :goto_4

    .line 128
    :catchall_0
    move-exception v0

    move-object v7, v0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v4

    .line 129
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/media/MediaResource;

    invoke-virtual {v4}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/media/MediaResource$Type;->name()Ljava/lang/String;

    move-result-object v4

    if-eqz v8, :cond_4

    :goto_5
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/sms/MmsSmsLogger;->a(Ljava/lang/String;IILjava/lang/String;Z)V

    .line 142
    :goto_6
    throw v7

    :cond_4
    move v5, v6

    .line 130
    goto :goto_5

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v8, :cond_6

    :goto_7
    invoke-virtual {v0, v1, v2, v5}, Lcom/facebook/orca/sms/MmsSmsLogger;->a(Ljava/lang/String;IZ)V

    goto :goto_6

    :cond_6
    move v5, v6

    goto :goto_7

    :cond_7
    move v5, v6

    .line 148
    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_8

    :goto_8
    invoke-virtual {v1, v2, v5}, Lcom/facebook/orca/sms/MmsSmsLogger;->a(Ljava/lang/String;Z)V

    throw v0

    :cond_8
    move v5, v6

    goto :goto_8

    .line 153
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    const-string v1, "Trying to send an Sms or Mms to an invalid set of participants: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, " "

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-instance v1, Landroid_src/mms/MmsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/CreateThreadParams;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 8
    .parameter

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/facebook/orca/server/CreateThreadParams;->a()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lcom/facebook/orca/server/CreateThreadParams;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v2

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    .line 69
    iget-object v4, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->a:Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    invoke-virtual {v4, v0}, Lcom/facebook/orca/protocol/methods/PickedUserUtils;->a(Lcom/facebook/orca/users/PickedUser;)Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->b()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->a(Lcom/facebook/orca/threads/Message;Ljava/util/Set;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->c:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->b(Ljava/lang/String;)Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;

    move-result-object v4

    .line 79
    const/4 v1, 0x3

    const-wide/16 v5, -0x1

    invoke-static {v0, v1, v5, v6}, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->a(Ljava/lang/String;IJ)Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->c:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->a(Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 87
    const/4 v5, 0x0

    .line 88
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->f:Lcom/facebook/orca/sms/MmsSmsUserUtils;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/sms/MmsSmsUserUtils;->a(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v5

    .line 91
    :cond_1
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v4}, Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    invoke-virtual {v4}, Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    return-object v0
.end method

.method public a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/server/NewMessageResult;
    .locals 7
    .parameter

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->c:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->b(Ljava/lang/String;)Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->b:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v0}, Lcom/facebook/orca/sms/FetchMmsSmsThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->c(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 109
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->a(Lcom/facebook/orca/threads/Message;Ljava/util/Set;)Lcom/facebook/orca/threads/Message;

    move-result-object v3

    .line 112
    new-instance v0, Lcom/facebook/orca/server/NewMessageResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/NewMessageResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;J)V

    return-object v0
.end method
