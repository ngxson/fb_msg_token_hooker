.class public Lcom/facebook/orca/server/RegisterPushTokenParams;
.super Ljava/lang/Object;
.source "RegisterPushTokenParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/RegisterPushTokenParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/orca/server/RegisterPushTokenParams$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/RegisterPushTokenParams$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/RegisterPushTokenParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    iput-object v0, p0, Lcom/facebook/orca/server/RegisterPushTokenParams;->a:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/RegisterPushTokenParams;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/server/RegisterPushTokenParams$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/RegisterPushTokenParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/orca/server/RegisterPushTokenParams;->a:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    .line 20
    iput-object p2, p0, Lcom/facebook/orca/server/RegisterPushTokenParams;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/server/RegisterPushTokenParams;->a:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/server/RegisterPushTokenParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/server/RegisterPushTokenParams;->a:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$ServiceType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/server/RegisterPushTokenParams;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return-void
.end method
