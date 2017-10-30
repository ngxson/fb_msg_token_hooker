.class public Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;
.super Ljava/lang/Object;
.source "AuthStateMachineConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static c:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/login/AuthFragmentConfig;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation$1;

    invoke-direct {v0}, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;->c:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v1, Lcom/facebook/orca/login/AuthFragmentConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;->a:Lcom/google/common/collect/ImmutableMap;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;->b:Z

    .line 45
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/login/AuthStateMachineConfig$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableMap;Z)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/login/AuthFragmentConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;->a:Lcom/google/common/collect/ImmutableMap;

    .line 37
    iput-boolean p2, p0, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;->b:Z

    .line 38
    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 55
    iget-boolean v0, p0, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
