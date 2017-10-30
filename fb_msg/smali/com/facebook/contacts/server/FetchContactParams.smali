.class public Lcom/facebook/contacts/server/FetchContactParams;
.super Ljava/lang/Object;
.source "FetchContactParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/users/UserKey;

.field private final b:Lcom/facebook/orca/server/DataFreshnessParam;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/server/DataFreshnessParam;Lcom/facebook/orca/users/UserKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lcom/facebook/contacts/server/FetchContactParams;->a:Lcom/facebook/orca/users/UserKey;

    .line 24
    iput-object p1, p0, Lcom/facebook/contacts/server/FetchContactParams;->b:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/contacts/server/FetchContactParams;->a:Lcom/facebook/orca/users/UserKey;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/server/DataFreshnessParam;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/contacts/server/FetchContactParams;->b:Lcom/facebook/orca/server/DataFreshnessParam;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/contacts/server/FetchContactParams;->a:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/facebook/contacts/server/FetchContactParams;->b:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0}, Lcom/facebook/orca/server/DataFreshnessParam;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return-void
.end method
