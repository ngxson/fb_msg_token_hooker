.class Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;
.super Ljava/lang/Object;
.source "FetchMmsSmsThreadSummaryResult.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/facebook/orca/threads/ParticipantInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->a:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->b:Ljava/lang/String;

    .line 41
    iput-wide p3, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->c:J

    .line 42
    iput-boolean p5, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->d:Z

    .line 43
    iput-object p6, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->e:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->f:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->g:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->b:Ljava/lang/String;

    .line 26
    iput-wide p3, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->c:J

    .line 27
    iput-boolean p5, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->d:Z

    .line 28
    iput-object p6, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->e:Ljava/lang/String;

    .line 29
    iput-object p7, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->f:Ljava/lang/String;

    .line 30
    iput-object p8, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->g:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 31
    return-void
.end method

.method static a(Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;

    iget-object v1, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->c:J

    iget-boolean v5, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->d:Z

    iget-object v6, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->e:Ljava/lang/String;

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)V

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->c:J

    return-wide v0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->d:Z

    return v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->e:Ljava/lang/String;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->f:Ljava/lang/String;

    return-object v0
.end method

.method g()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsThreadSummaryResult;->g:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method
