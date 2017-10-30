.class public Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;
.super Ljava/lang/Object;
.source "VerifyPhoneNumberSmsConsumer.java"


# instance fields
.field private a:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/Runnable;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->d:Z

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->a:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->a:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->a(Ljava/lang/Object;)Z

    .line 104
    invoke-direct {p0}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->e()V

    .line 105
    invoke-direct {p0}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->f()V

    .line 107
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\s\\w+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v2, "\\w+$"

    .line 136
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 137
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-object v0

    .line 142
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string v2, "\\w+$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 144
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->a:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->a:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Cannot get the confirmation sms from Facebook"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->a(Ljava/lang/Throwable;)Z

    .line 97
    invoke-direct {p0}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->f()V

    .line 99
    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 110
    new-instance v0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer$1;-><init>(Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;)V

    iput-object v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->c:Ljava/lang/Runnable;

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->c:Ljava/lang/Runnable;

    const-wide/32 v2, 0x186a0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->c:Ljava/lang/Runnable;

    .line 125
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    iput-object v1, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->e:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->b:Landroid/os/Handler;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->d:Z

    .line 160
    iput-object v1, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->a:Lcom/google/common/util/concurrent/SettableFuture;

    .line 161
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Null Handler!"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 63
    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Null Marker!"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    if-gt v0, v3, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "Invalid marker length!"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 67
    iput-object p2, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->e:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->b:Landroid/os/Handler;

    .line 69
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->c()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->a:Lcom/google/common/util/concurrent/SettableFuture;

    .line 70
    invoke-direct {p0}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->d()V

    .line 71
    iput-boolean v1, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->d:Z

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->a:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0

    :cond_1
    move v0, v2

    .line 62
    goto :goto_0

    :cond_2
    move v0, v2

    .line 63
    goto :goto_1
.end method

.method public a()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->e()V

    .line 77
    invoke-direct {p0}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->f()V

    .line 78
    return-void
.end method

.method public a(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    invoke-direct {p0, v0}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    new-instance v1, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer$SmsConsumerRunnable;

    invoke-direct {v1, p0, v0}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer$SmsConsumerRunnable;-><init>(Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->d:Z

    return v0
.end method
