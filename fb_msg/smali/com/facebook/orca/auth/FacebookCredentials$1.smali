.class final Lcom/facebook/orca/auth/FacebookCredentials$1;
.super Ljava/lang/Object;
.source "FacebookCredentials.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/orca/auth/FacebookCredentials;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/orca/auth/FacebookCredentials;
    .locals 2
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/facebook/orca/auth/FacebookCredentials;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/auth/FacebookCredentials;-><init>(Landroid/os/Parcel;Lcom/facebook/orca/auth/FacebookCredentials$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/orca/auth/FacebookCredentials;
    .locals 1
    .parameter

    .prologue
    .line 41
    new-array v0, p1, [Lcom/facebook/orca/auth/FacebookCredentials;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/facebook/orca/auth/FacebookCredentials$1;->a(Landroid/os/Parcel;)Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/facebook/orca/auth/FacebookCredentials$1;->a(I)[Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    return-object v0
.end method
