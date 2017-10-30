.class public Lcom/facebook/orca/threads/FolderName;
.super Ljava/lang/Object;
.source "FolderName.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/threads/FolderName;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/facebook/orca/threads/FolderName;

.field public static final b:Lcom/facebook/orca/threads/FolderName;

.field public static final c:Lcom/facebook/orca/threads/FolderName;

.field public static final d:Lcom/facebook/orca/threads/FolderName;

.field public static final e:Lcom/facebook/orca/threads/FolderName;

.field private static final f:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/facebook/orca/threads/FolderName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    new-instance v0, Lcom/facebook/orca/threads/FolderName;

    const-string v1, "none"

    invoke-direct {v0, v1}, Lcom/facebook/orca/threads/FolderName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    .line 16
    new-instance v0, Lcom/facebook/orca/threads/FolderName;

    const-string v1, "inbox"

    invoke-direct {v0, v1}, Lcom/facebook/orca/threads/FolderName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    .line 17
    new-instance v0, Lcom/facebook/orca/threads/FolderName;

    const-string v1, "other"

    invoke-direct {v0, v1}, Lcom/facebook/orca/threads/FolderName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/threads/FolderName;->c:Lcom/facebook/orca/threads/FolderName;

    .line 18
    new-instance v0, Lcom/facebook/orca/threads/FolderName;

    const-string v1, "mms-sms"

    invoke-direct {v0, v1}, Lcom/facebook/orca/threads/FolderName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    .line 19
    new-instance v0, Lcom/facebook/orca/threads/FolderName;

    const-string v1, "inbox_mms-sms"

    invoke-direct {v0, v1}, Lcom/facebook/orca/threads/FolderName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/threads/FolderName;->e:Lcom/facebook/orca/threads/FolderName;

    .line 21
    sget-object v0, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->c:Lcom/facebook/orca/threads/FolderName;

    sget-object v2, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    sget-object v3, Lcom/facebook/orca/threads/FolderName;->e:Lcom/facebook/orca/threads/FolderName;

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/threads/FolderName;->f:Lcom/google/common/collect/ImmutableSet;

    .line 49
    new-instance v0, Lcom/facebook/orca/threads/FolderName$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/FolderName$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/FolderName;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/FolderName;->g:Ljava/lang/String;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/threads/FolderName$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/FolderName;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/threads/FolderName;->g:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderName;
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-static {p0}, Lcom/facebook/orca/threads/FolderName;->b(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderName;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/orca/threads/FolderName;
    .locals 1
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/facebook/orca/threads/FolderName;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threads/FolderName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/orca/threads/FolderName;->b(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderName;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderName;
    .locals 3
    .parameter

    .prologue
    .line 88
    sget-object v0, Lcom/facebook/orca/threads/FolderName;->f:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/FolderName;

    .line 89
    invoke-static {v0, p0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/threads/FolderName;->g:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 71
    :cond_3
    check-cast p1, Lcom/facebook/orca/threads/FolderName;

    .line 73
    iget-object v2, p0, Lcom/facebook/orca/threads/FolderName;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/orca/threads/FolderName;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/orca/threads/FolderName;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/facebook/orca/threads/FolderName;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/threads/FolderName;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threads/FolderName;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/threads/FolderName;->g:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/orca/threads/FolderName;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return-void
.end method
