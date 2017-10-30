.class public Lcom/facebook/orca/threads/MessageBuilder;
.super Ljava/lang/Object;
.source "MessageBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Lcom/facebook/orca/threads/ParticipantInfo;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Lcom/facebook/orca/location/Coordinates;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/media/MediaResource;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/TitanAttachmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Lcom/facebook/orca/threads/Message$ChannelSource;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/media/MediaResource;",
            ">;"
        }
    .end annotation
.end field

.field private u:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->k:Ljava/util/List;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->l:Ljava/util/List;

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->m:Ljava/util/List;

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->o:Ljava/util/List;

    .line 38
    sget-object v0, Lcom/facebook/orca/threads/Message$ChannelSource;->API:Lcom/facebook/orca/threads/Message$ChannelSource;

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->s:Lcom/facebook/orca/threads/Message$ChannelSource;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 189
    iput p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->n:I

    .line 190
    return-object p0
.end method

.method public a(J)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->c:J

    .line 91
    return-object p0
.end method

.method public a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->j:Lcom/facebook/orca/location/Coordinates;

    .line 154
    return-object p0
.end method

.method public a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->s:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 235
    return-object p0
.end method

.method public a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->b:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->c:J

    .line 46
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->d:J

    .line 47
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->e:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 48
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->f:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->g:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->h:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->i:J

    .line 52
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->k()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->j:Lcom/facebook/orca/location/Coordinates;

    .line 53
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->k:Ljava/util/List;

    .line 54
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->l:Ljava/util/List;

    .line 55
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->m:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->n:I

    .line 57
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->s()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->o:Ljava/util/List;

    .line 58
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->p:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->q:Z

    .line 60
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->r:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->x()Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->s:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 62
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->y()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->t:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->A()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->u:J

    .line 64
    return-object p0
.end method

.method public a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->e:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 109
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->a:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/media/MediaResource;",
            ">;)",
            "Lcom/facebook/orca/threads/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 162
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->k:Ljava/util/List;

    .line 163
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->q:Z

    .line 217
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->d:J

    .line 100
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->b:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/TitanAttachmentInfo;",
            ">;)",
            "Lcom/facebook/orca/threads/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 171
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->l:Ljava/util/List;

    .line 172
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->c:J

    return-wide v0
.end method

.method public c(J)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->i:J

    .line 145
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->f:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;)",
            "Lcom/facebook/orca/threads/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 180
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->m:Ljava/util/List;

    .line 181
    return-object p0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->d:J

    return-wide v0
.end method

.method public d(J)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-wide p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->u:J

    .line 252
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->g:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)",
            "Lcom/facebook/orca/threads/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 198
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->o:Ljava/util/List;

    .line 199
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->p:Ljava/lang/String;

    .line 208
    return-object p0
.end method

.method public e(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/media/MediaResource;",
            ">;)",
            "Lcom/facebook/orca/threads/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 246
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->t:Ljava/util/List;

    .line 247
    return-object p0
.end method

.method public e()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->e:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->r:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->i:J

    return-wide v0
.end method

.method public j()Lcom/facebook/orca/location/Coordinates;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->j:Lcom/facebook/orca/location/Coordinates;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/media/MediaResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->k:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/TitanAttachmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->l:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->m:Ljava/util/List;

    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->n:I

    return v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->o:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->q:Z

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->r:Ljava/lang/String;

    return-object v0
.end method

.method public s()Lcom/facebook/orca/threads/Message$ChannelSource;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->s:Lcom/facebook/orca/threads/Message$ChannelSource;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/media/MediaResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->t:Ljava/util/List;

    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->t:Ljava/util/List;

    goto :goto_0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 256
    iget-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->u:J

    return-wide v0
.end method

.method public v()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/facebook/orca/threads/Message;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threads/Message;-><init>(Lcom/facebook/orca/threads/MessageBuilder;)V

    return-object v0
.end method
