.class public Lcom/facebook/orca/media/MediaResource;
.super Ljava/lang/Object;
.source "MediaResource.java"

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
            "Lcom/facebook/orca/media/MediaResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/media/MediaResource$Type;

.field private final b:Landroid/net/Uri;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/facebook/orca/media/MediaResource$1;

    invoke-direct {v0}, Lcom/facebook/orca/media/MediaResource$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/media/MediaResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/orca/media/MediaResource;->b:Landroid/net/Uri;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/media/MediaResource$Type;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/media/MediaResource;->a:Lcom/facebook/orca/media/MediaResource$Type;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/media/MediaResource;->c:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/media/MediaResource;->d:Ljava/lang/String;

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/media/MediaResource$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaResource;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/orca/media/MediaResource$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource$Builder;->a()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/media/MediaResource;->a:Lcom/facebook/orca/media/MediaResource$Type;

    .line 84
    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource$Builder;->b()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/media/MediaResource;->b:Landroid/net/Uri;

    .line 85
    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource$Builder;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/media/MediaResource;->c:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource$Builder;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/media/MediaResource;->d:Ljava/lang/String;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/media/MediaResource$Builder;Lcom/facebook/orca/media/MediaResource$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/orca/media/MediaResource;-><init>(Lcom/facebook/orca/media/MediaResource$Builder;)V

    return-void
.end method

.method public static a()Lcom/facebook/orca/media/MediaResource$Builder;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/facebook/orca/media/MediaResource$Builder;

    invoke-direct {v0}, Lcom/facebook/orca/media/MediaResource$Builder;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource;
    .locals 2
    .parameter

    .prologue
    .line 118
    invoke-static {}, Lcom/facebook/orca/media/MediaResource;->a()Lcom/facebook/orca/media/MediaResource$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/media/MediaResource$Type;->PHOTO:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/media/MediaResource$Builder;->a(Lcom/facebook/orca/media/MediaResource$Type;)Lcom/facebook/orca/media/MediaResource$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/media/MediaResource$Builder;->a(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource$Builder;->e()Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;)Lcom/facebook/orca/media/MediaResource;
    .locals 1
    .parameter

    .prologue
    .line 125
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/media/MediaResource;->a(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource;
    .locals 2
    .parameter

    .prologue
    .line 129
    invoke-static {}, Lcom/facebook/orca/media/MediaResource;->a()Lcom/facebook/orca/media/MediaResource$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/media/MediaResource$Type;->VIDEO:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/media/MediaResource$Builder;->a(Lcom/facebook/orca/media/MediaResource$Type;)Lcom/facebook/orca/media/MediaResource$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/media/MediaResource$Builder;->a(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource$Builder;->e()Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/File;)Lcom/facebook/orca/media/MediaResource;
    .locals 1
    .parameter

    .prologue
    .line 136
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/media/MediaResource;->b(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource;
    .locals 2
    .parameter

    .prologue
    .line 140
    invoke-static {}, Lcom/facebook/orca/media/MediaResource;->a()Lcom/facebook/orca/media/MediaResource$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/media/MediaResource$Type;->AUDIO:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/media/MediaResource$Builder;->a(Lcom/facebook/orca/media/MediaResource$Type;)Lcom/facebook/orca/media/MediaResource$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/media/MediaResource$Builder;->a(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource$Builder;->e()Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lcom/facebook/orca/media/MediaResource$Type;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/media/MediaResource;->a:Lcom/facebook/orca/media/MediaResource$Type;

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/orca/media/MediaResource;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/media/MediaResource;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/orca/media/MediaResource;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    if-ne p0, p1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    instance-of v2, p1, Lcom/facebook/orca/media/MediaResource;

    if-nez v2, :cond_2

    move v0, v1

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    check-cast p1, Lcom/facebook/orca/media/MediaResource;

    .line 114
    invoke-virtual {p0}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/orca/media/MediaResource;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 158
    iget-object v0, p0, Lcom/facebook/orca/media/MediaResource;->a:Lcom/facebook/orca/media/MediaResource$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/facebook/orca/media/MediaResource;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/media/MediaResource;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return-void
.end method
