.class public Lcom/facebook/orca/sms/MmsSmsUserUtils;
.super Ljava/lang/Object;
.source "MmsSmsUserUtils.java"


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/users/BuiltInContactsUserIterator;

.field private final c:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/users/BuiltInContactsUserIterator;Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/facebook/orca/users/BuiltInContactsUserIterator;",
            "Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsUserUtils;->a:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/facebook/orca/sms/MmsSmsUserUtils;->b:Lcom/facebook/orca/users/BuiltInContactsUserIterator;

    .line 33
    iput-object p3, p0, Lcom/facebook/orca/sms/MmsSmsUserUtils;->c:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/users/User;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsUserUtils;->c:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;

    move-result-object v0

    .line 87
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a(I)Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v1

    .line 89
    invoke-static {p2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->c()Ljava/lang/String;

    move-result-object p2

    .line 92
    :cond_0
    new-instance v2, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v3, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 97
    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 5

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsUserUtils;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 56
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v1, v2, :cond_0

    .line 57
    new-instance v1, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "@facebook.com"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 62
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    if-ne v1, v2, :cond_1

    .line 62
    new-instance v1, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid me user type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/facebook/orca/users/User;)Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v3, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Expecting User of type PHONE_NUMBER, was given User of type %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsUserUtils;->c:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->c()Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->e()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    new-instance v2, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v1}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;)V

    return-object v2

    :cond_1
    move v0, v2

    .line 71
    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/users/User;
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsUserUtils;->b:Lcom/facebook/orca/users/BuiltInContactsUserIterator;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->a(Ljava/lang/String;)V

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsUserUtils;->b:Lcom/facebook/orca/users/BuiltInContactsUserIterator;

    invoke-virtual {v0}, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->c()Lcom/facebook/orca/users/User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 43
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsUserUtils;->b:Lcom/facebook/orca/users/BuiltInContactsUserIterator;

    invoke-virtual {v0}, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->b()V

    .line 46
    const/4 v0, 0x0

    .line 47
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/sms/MmsSmsUserUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 51
    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsUserUtils;->b:Lcom/facebook/orca/users/BuiltInContactsUserIterator;

    invoke-virtual {v1}, Lcom/facebook/orca/users/BuiltInContactsUserIterator;->b()V

    throw v0
.end method
