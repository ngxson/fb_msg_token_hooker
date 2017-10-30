.class public Lcom/facebook/contacts/server/UploadBulkContactChange;
.super Ljava/lang/Object;
.source "UploadBulkContactChange.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/contacts/server/UploadBulkContactChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/users/User;

.field private final c:Lcom/facebook/contacts/server/UploadBulkContactChange$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/facebook/contacts/server/UploadBulkContactChange$1;

    invoke-direct {v0}, Lcom/facebook/contacts/server/UploadBulkContactChange$1;-><init>()V

    sput-object v0, Lcom/facebook/contacts/server/UploadBulkContactChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/server/UploadBulkContactChange;->a:Ljava/lang/String;

    .line 43
    const-class v0, Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    iput-object v0, p0, Lcom/facebook/contacts/server/UploadBulkContactChange;->b:Lcom/facebook/orca/users/User;

    .line 44
    const-class v0, Lcom/facebook/contacts/server/UploadBulkContactChange$Type;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/server/UploadBulkContactChange$Type;

    iput-object v0, p0, Lcom/facebook/contacts/server/UploadBulkContactChange;->c:Lcom/facebook/contacts/server/UploadBulkContactChange$Type;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/orca/users/User;Lcom/facebook/contacts/server/UploadBulkContactChange$Type;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 33
    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 34
    if-eqz p3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 36
    iput-object p1, p0, Lcom/facebook/contacts/server/UploadBulkContactChange;->a:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/facebook/contacts/server/UploadBulkContactChange;->b:Lcom/facebook/orca/users/User;

    .line 38
    iput-object p3, p0, Lcom/facebook/contacts/server/UploadBulkContactChange;->c:Lcom/facebook/contacts/server/UploadBulkContactChange$Type;

    .line 39
    return-void

    :cond_0
    move v0, v2

    .line 32
    goto :goto_0

    :cond_1
    move v0, v2

    .line 33
    goto :goto_1

    :cond_2
    move v1, v2

    .line 34
    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/contacts/server/UploadBulkContactChange;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/contacts/server/UploadBulkContactChange;->b:Lcom/facebook/orca/users/User;

    return-object v0
.end method

.method public c()Lcom/facebook/contacts/server/UploadBulkContactChange$Type;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/contacts/server/UploadBulkContactChange;->c:Lcom/facebook/contacts/server/UploadBulkContactChange$Type;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/contacts/server/UploadBulkContactChange;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/facebook/contacts/server/UploadBulkContactChange;->b:Lcom/facebook/orca/users/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    iget-object v0, p0, Lcom/facebook/contacts/server/UploadBulkContactChange;->c:Lcom/facebook/contacts/server/UploadBulkContactChange$Type;

    invoke-virtual {v0}, Lcom/facebook/contacts/server/UploadBulkContactChange$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method
