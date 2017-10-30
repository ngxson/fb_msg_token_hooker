.class public Lcom/facebook/orca/users/PicCropInfo;
.super Ljava/lang/Object;
.source "PicCropInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/facebook/common/json/jsonmirror/JMStaticKeysDictDestination;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/users/PicCropInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/facebook/common/json/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "uri"
    .end annotation
.end field

.field private final b:I
    .annotation runtime Lcom/facebook/common/json/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "width"
    .end annotation
.end field

.field private final c:I
    .annotation runtime Lcom/facebook/common/json/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "height"
    .end annotation
.end field

.field private final d:F
    .annotation runtime Lcom/facebook/common/json/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "left"
    .end annotation
.end field

.field private final e:F
    .annotation runtime Lcom/facebook/common/json/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "top"
    .end annotation
.end field

.field private final f:F
    .annotation runtime Lcom/facebook/common/json/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "right"
    .end annotation
.end field

.field private final g:F
    .annotation runtime Lcom/facebook/common/json/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "bottom"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/facebook/orca/users/PicCropInfo$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/PicCropInfo$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/PicCropInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/users/PicCropInfo;->a:Ljava/lang/String;

    .line 41
    iput v2, p0, Lcom/facebook/orca/users/PicCropInfo;->b:I

    .line 42
    iput v2, p0, Lcom/facebook/orca/users/PicCropInfo;->c:I

    .line 43
    iput v1, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    .line 44
    iput v1, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    .line 45
    iput v1, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    .line 46
    iput v1, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/PicCropInfo;->a:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/PicCropInfo;->b:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/PicCropInfo;->c:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/users/PicCropInfo$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/PicCropInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIFFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/orca/users/PicCropInfo;->a:Ljava/lang/String;

    .line 57
    iput p2, p0, Lcom/facebook/orca/users/PicCropInfo;->b:I

    .line 58
    iput p3, p0, Lcom/facebook/orca/users/PicCropInfo;->c:I

    .line 59
    iput p4, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    .line 60
    iput p5, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    .line 61
    iput p6, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    .line 62
    iput p7, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    .line 63
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/users/PicCropInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/users/PicCropInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->c:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    return v0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    return v0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    return v0
.end method

.method public i()Z
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 108
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    iget v1, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    iget v1, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 117
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    iget v2, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    iget v3, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    iget v4, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/orca/users/PicCropInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 142
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 143
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 144
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 145
    return-void
.end method
