.class public Lcom/facebook/orca/server/FetchLastActiveParams;
.super Ljava/lang/Object;
.source "FetchLastActiveParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/FetchLastActiveParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/facebook/orca/server/FetchLastActiveParams$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchLastActiveParams$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/FetchLastActiveParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    iput-object v0, p0, Lcom/facebook/orca/server/FetchLastActiveParams;->a:Ljava/util/EnumSet;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/server/FetchLastActiveParams;->b:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/server/FetchLastActiveParams$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/FetchLastActiveParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/orca/server/FetchLastActiveParams;->a:Ljava/util/EnumSet;

    .line 39
    iput p2, p0, Lcom/facebook/orca/server/FetchLastActiveParams;->b:I

    .line 40
    return-void
.end method

.method public static a(I)Lcom/facebook/orca/server/FetchLastActiveParams;
    .locals 2
    .parameter

    .prologue
    .line 25
    new-instance v0, Lcom/facebook/orca/server/FetchLastActiveParams;

    sget-object v1, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;->TOP_FRIENDS:Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/facebook/orca/server/FetchLastActiveParams;-><init>(Ljava/util/EnumSet;I)V

    return-object v0
.end method

.method public static b(I)Lcom/facebook/orca/server/FetchLastActiveParams;
    .locals 3
    .parameter

    .prologue
    .line 29
    new-instance v0, Lcom/facebook/orca/server/FetchLastActiveParams;

    sget-object v1, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;->TOP_FRIENDS:Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    sget-object v2, Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;->FAVORITE_FRIENDS:Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/facebook/orca/server/FetchLastActiveParams;-><init>(Ljava/util/EnumSet;I)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/server/FetchLastActiveParams$FriendGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/server/FetchLastActiveParams;->a:Ljava/util/EnumSet;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/facebook/orca/server/FetchLastActiveParams;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/server/FetchLastActiveParams;->a:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 74
    iget v0, p0, Lcom/facebook/orca/server/FetchLastActiveParams;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return-void
.end method
