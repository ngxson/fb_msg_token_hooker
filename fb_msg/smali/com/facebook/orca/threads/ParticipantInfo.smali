.class public Lcom/facebook/orca/threads/ParticipantInfo;
.super Ljava/lang/Object;
.source "ParticipantInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/users/UserKey;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/facebook/orca/threads/ParticipantInfo$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ParticipantInfo$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/ParticipantInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ParticipantInfo;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ParticipantInfo;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ParticipantInfo;->a:Lcom/facebook/orca/users/UserKey;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/threads/ParticipantInfo$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/facebook/orca/threads/ParticipantInfo;->a:Lcom/facebook/orca/users/UserKey;

    .line 30
    iput-object p2, p0, Lcom/facebook/orca/threads/ParticipantInfo;->b:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/facebook/orca/threads/ParticipantInfo;->c:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/threads/ParticipantInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/threads/ParticipantInfo;->a:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/threads/ParticipantInfo;->a:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/orca/threads/ParticipantInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/threads/ParticipantInfo;->a:Lcom/facebook/orca/users/UserKey;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    const-class v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "userKey"

    iget-object v2, p0, Lcom/facebook/orca/threads/ParticipantInfo;->a:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/facebook/orca/threads/ParticipantInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "emailAddress"

    iget-object v2, p0, Lcom/facebook/orca/threads/ParticipantInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/threads/ParticipantInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/threads/ParticipantInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/threads/ParticipantInfo;->a:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return-void
.end method
