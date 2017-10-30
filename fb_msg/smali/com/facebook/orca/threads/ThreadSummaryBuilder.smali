.class public Lcom/facebook/orca/threads/ThreadSummaryBuilder;
.super Ljava/lang/Object;
.source "ThreadSummaryBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/facebook/orca/users/UserKey;

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Lcom/facebook/orca/threads/ParticipantInfo;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/net/Uri;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lcom/facebook/orca/threads/FolderName;

.field private w:Lcom/facebook/orca/compose/MessageDraft;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f:Ljava/util/List;

    .line 26
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g:Ljava/util/List;

    .line 27
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h:Ljava/util/List;

    .line 31
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c:J

    .line 85
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->q:Landroid/net/Uri;

    .line 221
    return-object p0
.end method

.method public a(Lcom/facebook/orca/compose/MessageDraft;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->w:Lcom/facebook/orca/compose/MessageDraft;

    .line 275
    return-object p0
.end method

.method public a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->v:Lcom/facebook/orca/threads/FolderName;

    .line 266
    return-object p0
.end method

.method public a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->n:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 185
    return-object p0
.end method

.method public a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b:J

    .line 47
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c:J

    .line 48
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d:J

    .line 49
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f:Ljava/util/List;

    .line 51
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->z()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g:Ljava/util/List;

    .line 52
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h:Ljava/util/List;

    .line 53
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->i:Z

    .line 54
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->h()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->j:Lcom/facebook/orca/users/UserKey;

    .line 55
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->k:J

    .line 56
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l:Ljava/util/List;

    .line 57
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->m:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->o()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->n:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 59
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->o:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->p:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->r:Z

    .line 62
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->s:Z

    .line 63
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->t:Z

    .line 64
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->w()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->u:Z

    .line 65
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->x()Lcom/facebook/orca/threads/FolderName;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->v:Lcom/facebook/orca/threads/FolderName;

    .line 66
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->y()Lcom/facebook/orca/compose/MessageDraft;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->w:Lcom/facebook/orca/compose/MessageDraft;

    .line 67
    return-object p0
.end method

.method public a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->j:Lcom/facebook/orca/users/UserKey;

    .line 131
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;)",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;"
        }
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f:Ljava/util/List;

    .line 140
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->i:Z

    .line 122
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c:J

    return-wide v0
.end method

.method public b(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d:J

    .line 94
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;)",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;"
        }
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g:Ljava/util/List;

    .line 149
    return-object p0
.end method

.method public b(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->r:Z

    .line 230
    return-object p0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d:J

    return-wide v0
.end method

.method public c(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b:J

    .line 107
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->m:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;"
        }
    .end annotation

    .prologue
    .line 157
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h:Ljava/util/List;

    .line 158
    return-object p0
.end method

.method public c(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->s:Z

    .line 239
    return-object p0
.end method

.method public d(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-wide p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->k:J

    .line 167
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->o:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;"
        }
    .end annotation

    .prologue
    .line 202
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l:Ljava/util/List;

    .line 203
    return-object p0
.end method

.method public d(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->t:Z

    .line 248
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b:J

    return-wide v0
.end method

.method public e(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->p:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public e(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->u:Z

    .line 257
    return-object p0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->i:Z

    return v0
.end method

.method public g()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->j:Lcom/facebook/orca/users/UserKey;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
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
    .line 153
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h:Ljava/util/List;

    return-object v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->k:J

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->n:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->o:Ljava/lang/String;

    return-object v0
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
    .line 198
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->q:Landroid/net/Uri;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->r:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->s:Z

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->t:Z

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->u:Z

    return v0
.end method

.method public v()Lcom/facebook/orca/threads/FolderName;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->v:Lcom/facebook/orca/threads/FolderName;

    return-object v0
.end method

.method public w()Lcom/facebook/orca/compose/MessageDraft;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->w:Lcom/facebook/orca/compose/MessageDraft;

    return-object v0
.end method

.method public x()Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threads/ThreadSummary;-><init>(Lcom/facebook/orca/threads/ThreadSummaryBuilder;)V

    return-object v0
.end method
