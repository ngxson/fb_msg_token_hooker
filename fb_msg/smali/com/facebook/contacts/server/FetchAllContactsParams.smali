.class public Lcom/facebook/contacts/server/FetchAllContactsParams;
.super Ljava/lang/Object;
.source "FetchAllContactsParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/contacts/server/FetchAllContactsParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Z

.field private final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/facebook/contacts/server/FetchAllContactsParams$1;

    invoke-direct {v0}, Lcom/facebook/contacts/server/FetchAllContactsParams$1;-><init>()V

    sput-object v0, Lcom/facebook/contacts/server/FetchAllContactsParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;JZF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->a:I

    .line 26
    iput-object p2, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->b:Ljava/lang/String;

    .line 27
    iput-wide p3, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->c:J

    .line 28
    iput-boolean p5, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->d:Z

    .line 29
    iput p6, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->e:F

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->a:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->b:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->c:J

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->d:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->e:F

    .line 38
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/contacts/server/FetchAllContactsParams$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/facebook/contacts/server/FetchAllContactsParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static a(ILjava/lang/String;F)Lcom/facebook/contacts/server/FetchAllContactsParams;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/contacts/server/FetchAllContactsParams;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/contacts/server/FetchAllContactsParams;-><init>(ILjava/lang/String;JZF)V

    return-object v0
.end method

.method public static b(ILjava/lang/String;F)Lcom/facebook/contacts/server/FetchAllContactsParams;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    new-instance v0, Lcom/facebook/contacts/server/FetchAllContactsParams;

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    move v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/contacts/server/FetchAllContactsParams;-><init>(ILjava/lang/String;JZF)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->d:Z

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->e:F

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-wide v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget-boolean v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lcom/facebook/contacts/server/FetchAllContactsParams;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 119
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
