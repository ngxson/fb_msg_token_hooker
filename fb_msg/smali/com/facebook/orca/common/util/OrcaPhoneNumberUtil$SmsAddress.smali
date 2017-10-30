.class public Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;
.super Ljava/lang/Object;
.source "OrcaPhoneNumberUtil.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->b:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 40
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 3
    .parameter

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-static {v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->b(Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    if-eqz p1, :cond_0

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-static {v2}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->a(Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/users/UserPhoneNumber;
    .locals 3
    .parameter

    .prologue
    .line 96
    new-instance v0, Lcom/facebook/orca/users/UserPhoneNumber;

    invoke-virtual {p0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/orca/users/UserPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->b:Ljava/lang/String;

    .line 67
    :goto_0
    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-static {v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->a(Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->b:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-static {v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->a(Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->b:Ljava/lang/String;

    .line 81
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->a:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-static {v0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->a(Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Lcom/facebook/orca/users/UserKey;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/facebook/orca/users/UserKey;

    sget-object v1, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {p0}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil$SmsAddress;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    return-object v0
.end method
