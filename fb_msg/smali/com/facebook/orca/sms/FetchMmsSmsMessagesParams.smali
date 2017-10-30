.class Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;
.super Ljava/lang/Object;
.source "FetchMmsSmsMessagesParams.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-ltz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 19
    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 20
    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 21
    iput-object p1, p0, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->a:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->b:I

    .line 23
    iput-object p3, p0, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->c:Ljava/lang/Long;

    .line 24
    iput-object p4, p0, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->d:Ljava/lang/Long;

    .line 25
    return-void

    :cond_2
    move v0, v2

    .line 18
    goto :goto_0

    :cond_3
    move v0, v2

    .line 19
    goto :goto_1
.end method

.method static a(Ljava/lang/String;IJ)Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;-><init>(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method static b(Ljava/lang/String;IJ)Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;-><init>(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->b:I

    return v0
.end method

.method c()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->c:Ljava/lang/Long;

    return-object v0
.end method

.method d()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/sms/FetchMmsSmsMessagesParams;->d:Ljava/lang/Long;

    return-object v0
.end method
