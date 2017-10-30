.class public Lcom/facebook/contacts/server/FetchAllContactsResult;
.super Lcom/facebook/orca/server/BaseResult;
.source "FetchAllContactsResult.java"

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
            "Lcom/facebook/contacts/server/FetchAllContactsResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/facebook/contacts/server/FetchAllContactsResult;


# instance fields
.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/models/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 23
    new-instance v0, Lcom/facebook/contacts/server/FetchAllContactsResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/high16 v6, -0x4080

    invoke-direct/range {v0 .. v6}, Lcom/facebook/contacts/server/FetchAllContactsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;JF)V

    sput-object v0, Lcom/facebook/contacts/server/FetchAllContactsResult;->a:Lcom/facebook/contacts/server/FetchAllContactsResult;

    .line 67
    new-instance v0, Lcom/facebook/contacts/server/FetchAllContactsResult$1;

    invoke-direct {v0}, Lcom/facebook/contacts/server/FetchAllContactsResult$1;-><init>()V

    sput-object v0, Lcom/facebook/contacts/server/FetchAllContactsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 49
    const-class v0, Lcom/facebook/contacts/models/Contact;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/server/FetchAllContactsResult;->b:Lcom/google/common/collect/ImmutableList;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/server/FetchAllContactsResult;->c:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/contacts/server/FetchAllContactsResult;->d:F

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/contacts/server/FetchAllContactsResult$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/contacts/server/FetchAllContactsResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;JF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/server/DataFreshnessResult;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/models/Contact;",
            ">;",
            "Ljava/lang/String;",
            "JF)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p4, p5}, Lcom/facebook/orca/server/BaseResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;J)V

    .line 41
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iput-object p2, p0, Lcom/facebook/contacts/server/FetchAllContactsResult;->b:Lcom/google/common/collect/ImmutableList;

    .line 43
    iput-object p3, p0, Lcom/facebook/contacts/server/FetchAllContactsResult;->c:Ljava/lang/String;

    .line 44
    iput p6, p0, Lcom/facebook/contacts/server/FetchAllContactsResult;->d:F

    .line 45
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/contacts/models/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/contacts/server/FetchAllContactsResult;->b:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/contacts/server/FetchAllContactsResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/facebook/contacts/server/FetchAllContactsResult;->d:F

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/facebook/orca/server/BaseResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    iget-object v0, p0, Lcom/facebook/contacts/server/FetchAllContactsResult;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/facebook/contacts/server/FetchAllContactsResult;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget v0, p0, Lcom/facebook/contacts/server/FetchAllContactsResult;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 89
    return-void
.end method
