.class final Lcom/facebook/contacts/server/UploadBulkContactChange$1;
.super Ljava/lang/Object;
.source "UploadBulkContactChange.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/contacts/server/UploadBulkContactChange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/contacts/server/UploadBulkContactChange;
    .locals 1
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/facebook/contacts/server/UploadBulkContactChange;

    invoke-direct {v0, p1}, Lcom/facebook/contacts/server/UploadBulkContactChange;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/contacts/server/UploadBulkContactChange;
    .locals 1
    .parameter

    .prologue
    .line 66
    new-array v0, p1, [Lcom/facebook/contacts/server/UploadBulkContactChange;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/facebook/contacts/server/UploadBulkContactChange$1;->a(Landroid/os/Parcel;)Lcom/facebook/contacts/server/UploadBulkContactChange;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/facebook/contacts/server/UploadBulkContactChange$1;->a(I)[Lcom/facebook/contacts/server/UploadBulkContactChange;

    move-result-object v0

    return-object v0
.end method
