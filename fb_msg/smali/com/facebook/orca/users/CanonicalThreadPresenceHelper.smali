.class public Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;
.super Ljava/lang/Object;
.source "CanonicalThreadPresenceHelper.java"


# instance fields
.field private final a:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private final b:Lcom/facebook/orca/presence/PresenceManager;

.field private final c:Lcom/facebook/orca/cache/DataCache;

.field private final d:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private final e:Lcom/facebook/orca/users/LastActiveHelper;

.field private final f:Landroid/content/res/Resources;

.field private final g:Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;

.field private h:Z

.field private i:Lcom/facebook/orca/threads/ThreadSummary;

.field private j:Lcom/facebook/orca/threads/ThreadParticipant;

.field private k:Lcom/facebook/orca/users/User;

.field private l:Lcom/facebook/orca/users/UserKey;

.field private m:Lcom/facebook/orca/presence/PresenceState;

.field private n:J

.field private o:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/threads/ThreadParticipantUtils;Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/cache/ThreadDisplayCache;Lcom/facebook/orca/users/LastActiveHelper;Landroid/content/res/Resources;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->m:Lcom/facebook/orca/presence/PresenceState;

    .line 68
    iput-object p1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 69
    iput-object p2, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->b:Lcom/facebook/orca/presence/PresenceManager;

    .line 70
    iput-object p3, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->c:Lcom/facebook/orca/cache/DataCache;

    .line 71
    iput-object p4, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->d:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 72
    iput-object p5, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->e:Lcom/facebook/orca/users/LastActiveHelper;

    .line 73
    iput-object p6, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->f:Landroid/content/res/Resources;

    .line 75
    new-instance v0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$1;-><init>(Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;)V

    iput-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->g:Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceState;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/users/UserKey;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->l:Lcom/facebook/orca/users/UserKey;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->m:Lcom/facebook/orca/presence/PresenceState;

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->l:Lcom/facebook/orca/users/UserKey;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->b:Lcom/facebook/orca/presence/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->l:Lcom/facebook/orca/users/UserKey;

    iget-object v2, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->g:Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;)V

    .line 195
    :cond_2
    iput-object p1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->l:Lcom/facebook/orca/users/UserKey;

    .line 197
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->l:Lcom/facebook/orca/users/UserKey;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->b:Lcom/facebook/orca/presence/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->l:Lcom/facebook/orca/users/UserKey;

    iget-object v2, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->g:Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;)V

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->b:Lcom/facebook/orca/presence/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->l:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->m:Lcom/facebook/orca/presence/PresenceState;

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->l:Lcom/facebook/orca/users/UserKey;

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->l:Lcom/facebook/orca/users/UserKey;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->m:Lcom/facebook/orca/presence/PresenceState;

    if-eq v0, p2, :cond_0

    .line 214
    iput-object p2, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->m:Lcom/facebook/orca/presence/PresenceState;

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->o:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->o:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;->a(Lcom/facebook/orca/presence/PresenceState;)V

    goto :goto_0
.end method

.method private e()Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->i:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iget-object v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->i:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-boolean v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->h:Z

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->i:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iget-object v2, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->i:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->j:Lcom/facebook/orca/threads/ThreadParticipant;

    .line 173
    iget-object v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->j:Lcom/facebook/orca/threads/ThreadParticipant;

    if-eqz v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->j:Lcom/facebook/orca/threads/ThreadParticipant;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    .line 177
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/users/UserKey;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/users/UserKey;)V

    goto :goto_0
.end method

.method private g()J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 227
    iget-object v2, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->k:Lcom/facebook/orca/users/User;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->k:Lcom/facebook/orca/users/User;

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v2

    if-nez v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-wide v0

    .line 230
    :cond_1
    iget-wide v2, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->n:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 231
    iget-wide v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->n:J

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->k:Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/LastActive;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->n:J

    .line 236
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->j:Lcom/facebook/orca/threads/ThreadParticipant;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->j:Lcom/facebook/orca/threads/ThreadParticipant;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->n:J

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->d:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->k:Lcom/facebook/orca/users/User;

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/Long;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->n:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 244
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->n:J

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->e:Lcom/facebook/orca/users/LastActiveHelper;

    iget-wide v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->n:J

    iget-object v3, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->k:Lcom/facebook/orca/users/User;

    invoke-virtual {v3}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/LastActive;->b()Z

    move-result v3

    iget-object v4, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->m:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v4}, Lcom/facebook/orca/presence/PresenceState;->a()Lcom/facebook/orca/presence/Availability;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/users/LastActiveHelper;->a(JZLcom/facebook/orca/presence/Availability;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->n:J

    .line 252
    iget-wide v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->n:J

    goto :goto_0
.end method

.method private h()Z
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->k:Lcom/facebook/orca/users/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->k:Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->k:Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/LastActive;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->k:Lcom/facebook/orca/users/User;

    if-nez v0, :cond_0

    .line 274
    const-string v0, ""

    .line 277
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->e:Lcom/facebook/orca/users/LastActiveHelper;

    iget-wide v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->n:J

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/users/LastActiveHelper;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->j:Lcom/facebook/orca/threads/ThreadParticipant;

    return-object v0
.end method

.method public a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->i:Lcom/facebook/orca/threads/ThreadSummary;

    .line 101
    invoke-direct {p0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->e()Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->j:Lcom/facebook/orca/threads/ThreadParticipant;

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->j:Lcom/facebook/orca/threads/ThreadParticipant;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->c:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->j:Lcom/facebook/orca/threads/ThreadParticipant;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->k:Lcom/facebook/orca/users/User;

    .line 108
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->f()V

    .line 109
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->k:Lcom/facebook/orca/users/User;

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->o:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;

    .line 136
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->h:Z

    .line 90
    invoke-direct {p0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->f()V

    .line 91
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->j:Lcom/facebook/orca/threads/ThreadParticipant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/facebook/orca/presence/PresenceState;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->m:Lcom/facebook/orca/presence/PresenceState;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->m:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v1}, Lcom/facebook/orca/presence/PresenceState;->a()Lcom/facebook/orca/presence/Availability;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/presence/Availability;->AVAILABLE:Lcom/facebook/orca/presence/Availability;

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->f:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->presence_active_now:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_1
    :goto_0
    return-object v0

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->g()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 153
    invoke-direct {p0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->m:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v1}, Lcom/facebook/orca/presence/PresenceState;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->f:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->presence_mobile:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
