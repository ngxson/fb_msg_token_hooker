.class final Lcom/facebook/orca/threads/ThreadSummary$1;
.super Ljava/lang/Object;
.source "ThreadSummary.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/orca/threads/ThreadSummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 2
    .parameter

    .prologue
    .line 279
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummary;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/threads/ThreadSummary;-><init>(Landroid/os/Parcel;Lcom/facebook/orca/threads/ThreadSummary$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1
    .parameter

    .prologue
    .line 283
    new-array v0, p1, [Lcom/facebook/orca/threads/ThreadSummary;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threads/ThreadSummary$1;->a(Landroid/os/Parcel;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threads/ThreadSummary$1;->a(I)[Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    return-object v0
.end method
