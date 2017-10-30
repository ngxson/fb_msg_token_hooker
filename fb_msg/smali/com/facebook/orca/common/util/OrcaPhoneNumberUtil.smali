.class public Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;
.super Ljava/lang/Object;
.source "OrcaPhoneNumberUtil.java"


# instance fields
.field private final a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/PhoneNumberUtil;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 26
    iput-object p2, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->b:Ljavax/inject/Provider;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)Ljavax/inject/Provider;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->b:Ljavax/inject/Provider;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;
    .locals 1
    .parameter

    .prologue
    .line 120
    new-instance v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;-><init>(Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Lcom/facebook/orca/users/UserPhoneNumber;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 140
    new-instance v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;-><init>(Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a(I)Lcom/facebook/orca/users/UserPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 128
    new-instance v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;-><init>(Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 132
    new-instance v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;-><init>(Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;
    .locals 1
    .parameter

    .prologue
    .line 136
    new-instance v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;-><init>(Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    return-object v0
.end method
