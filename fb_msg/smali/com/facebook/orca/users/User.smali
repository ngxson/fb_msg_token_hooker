.class public Lcom/facebook/orca/users/User;
.super Ljava/lang/Object;
.source "User.java"

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
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/users/User$Type;

.field private final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/users/Name;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/facebook/orca/users/PicCropInfo;

.field private final i:Ljava/lang/String;

.field private final j:F

.field private final k:Lcom/facebook/common/util/TriState;

.field private final l:Z

.field private final m:Lcom/facebook/orca/users/Birthday;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Lcom/facebook/orca/users/LastActive;

.field private final q:Lcom/facebook/orca/users/UserKey;

.field private final r:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/facebook/orca/users/UserFbidIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/facebook/orca/users/User$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/User$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/User$Type;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    .line 87
    new-instance v0, Lcom/facebook/orca/users/UserKey;

    iget-object v1, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    iget-object v2, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/users/User;->q:Lcom/facebook/orca/users/UserKey;

    .line 88
    const-class v0, Lcom/facebook/orca/users/UserEmailAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    .line 90
    const-class v0, Lcom/facebook/orca/users/UserPhoneNumber;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    .line 92
    const-class v0, Lcom/facebook/orca/users/Name;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/Name;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->f:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    .line 95
    const-class v0, Lcom/facebook/orca/users/PicCropInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PicCropInfo;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->h:Lcom/facebook/orca/users/PicCropInfo;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->i:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/User;->j:F

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/TriState;->valueOf(Ljava/lang/String;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->k:Lcom/facebook/common/util/TriState;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/users/User;->l:Z

    .line 100
    const-class v0, Lcom/facebook/orca/users/Birthday;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/Birthday;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->m:Lcom/facebook/orca/users/Birthday;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->n:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->o:Ljava/lang/String;

    .line 103
    const-class v0, Lcom/facebook/orca/users/LastActive;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/LastActive;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->p:Lcom/facebook/orca/users/LastActive;

    .line 104
    invoke-direct {p0}, Lcom/facebook/orca/users/User;->z()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->s:Lcom/facebook/orca/users/UserFbidIdentifier;

    .line 105
    invoke-direct {p0}, Lcom/facebook/orca/users/User;->A()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->r:Lcom/google/common/collect/ImmutableList;

    .line 106
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/users/User$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/User;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/users/UserBuilder;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id must not be null"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    const-string v1, "type must not be null"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User$Type;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    .line 57
    new-instance v0, Lcom/facebook/orca/users/UserKey;

    iget-object v1, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    iget-object v2, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/users/User;->q:Lcom/facebook/orca/users/UserKey;

    .line 58
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    .line 63
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    .line 68
    :goto_1
    invoke-static {p1}, Lcom/facebook/orca/users/User;->a(Lcom/facebook/orca/users/UserBuilder;)Lcom/facebook/orca/users/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    .line 69
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->f:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->k()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->h:Lcom/facebook/orca/users/PicCropInfo;

    .line 72
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->i:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->m()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/User;->j:F

    .line 74
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->n()Lcom/facebook/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->k:Lcom/facebook/common/util/TriState;

    .line 75
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/users/User;->l:Z

    .line 76
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->p()Lcom/facebook/orca/users/Birthday;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->m:Lcom/facebook/orca/users/Birthday;

    .line 77
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->n:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->o:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->s()Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->p:Lcom/facebook/orca/users/LastActive;

    .line 80
    invoke-direct {p0}, Lcom/facebook/orca/users/User;->z()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->s:Lcom/facebook/orca/users/UserFbidIdentifier;

    .line 81
    invoke-direct {p0}, Lcom/facebook/orca/users/User;->A()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->r:Lcom/google/common/collect/ImmutableList;

    .line 82
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    goto :goto_1
.end method

.method private A()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/facebook/orca/users/User;->s:Lcom/facebook/orca/users/UserFbidIdentifier;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/facebook/orca/users/User;->s:Lcom/facebook/orca/users/UserFbidIdentifier;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 130
    iget-object v1, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 131
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/facebook/orca/users/UserBuilder;)Lcom/facebook/orca/users/Name;
    .locals 4
    .parameter

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->h()Lcom/facebook/orca/users/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->h()Lcom/facebook/orca/users/Name;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/orca/users/Name;

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private z()Lcom/facebook/orca/users/UserFbidIdentifier;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    sget-object v1, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_0

    .line 118
    new-instance v0, Lcom/facebook/orca/users/UserFbidIdentifier;

    iget-object v1, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/orca/users/UserFbidIdentifier;-><init>(Ljava/lang/String;)V

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/User$Type;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/orca/users/User;->q:Lcom/facebook/orca/users/UserKey;

    return-object v0
.end method

.method public d()Lcom/facebook/orca/users/Name;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/facebook/orca/users/UserFbidIdentifier;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/orca/users/User;->s:Lcom/facebook/orca/users/UserFbidIdentifier;

    return-object v0
.end method

.method public h()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public i()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserEmailAddress;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserEmailAddress;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/facebook/orca/users/UserPhoneNumber;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserPhoneNumber;

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/facebook/orca/users/User;->f:Ljava/lang/String;

    return-object v0
.end method

.method public p()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Lcom/facebook/orca/users/PicCropInfo;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/facebook/orca/users/User;->h:Lcom/facebook/orca/users/PicCropInfo;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/facebook/orca/users/User;->i:Ljava/lang/String;

    return-object v0
.end method

.method public s()F
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/facebook/orca/users/User;->j:F

    return v0
.end method

.method public t()Lcom/facebook/common/util/TriState;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/facebook/orca/users/User;->k:Lcom/facebook/common/util/TriState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    iget-object v1, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-object v1, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/facebook/orca/users/User;->l:Z

    return v0
.end method

.method public v()Lcom/facebook/orca/users/Birthday;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/orca/users/User;->m:Lcom/facebook/orca/users/Birthday;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/facebook/orca/users/User;->n:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 300
    iget-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 301
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 302
    iget-object v0, p0, Lcom/facebook/orca/users/User;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/facebook/orca/users/User;->h:Lcom/facebook/orca/users/PicCropInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 305
    iget-object v0, p0, Lcom/facebook/orca/users/User;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget v0, p0, Lcom/facebook/orca/users/User;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 307
    iget-object v0, p0, Lcom/facebook/orca/users/User;->k:Lcom/facebook/common/util/TriState;

    invoke-virtual {v0}, Lcom/facebook/common/util/TriState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-boolean v0, p0, Lcom/facebook/orca/users/User;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-object v0, p0, Lcom/facebook/orca/users/User;->m:Lcom/facebook/orca/users/Birthday;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 310
    iget-object v0, p0, Lcom/facebook/orca/users/User;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/facebook/orca/users/User;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/facebook/orca/users/User;->p:Lcom/facebook/orca/users/LastActive;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 313
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/orca/users/User;->o:Ljava/lang/String;

    return-object v0
.end method

.method public y()Lcom/facebook/orca/users/LastActive;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/orca/users/User;->p:Lcom/facebook/orca/users/LastActive;

    return-object v0
.end method
