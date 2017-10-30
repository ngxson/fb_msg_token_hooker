.class final Lcom/facebook/orca/login/AuthFragmentConfig$1;
.super Ljava/lang/Object;
.source "AuthFragmentConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/orca/login/AuthFragmentConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/orca/login/AuthFragmentConfig;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    :try_start_0
    new-instance v0, Lcom/facebook/orca/login/AuthFragmentConfig;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/facebook/orca/login/AuthFragmentConfig;-><init>(Landroid/os/Parcel;Lcom/facebook/orca/login/AuthFragmentConfig$1;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 55
    goto :goto_0
.end method

.method public a(I)[Lcom/facebook/orca/login/AuthFragmentConfig;
    .locals 1
    .parameter

    .prologue
    .line 61
    new-array v0, p1, [Lcom/facebook/orca/login/AuthFragmentConfig;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/facebook/orca/login/AuthFragmentConfig$1;->a(Landroid/os/Parcel;)Lcom/facebook/orca/login/AuthFragmentConfig;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/facebook/orca/login/AuthFragmentConfig$1;->a(I)[Lcom/facebook/orca/login/AuthFragmentConfig;

    move-result-object v0

    return-object v0
.end method
